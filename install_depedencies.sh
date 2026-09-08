#!/usr/bin/env bash
set -e

echo "=== Checking & Installing Build Dependencies for LibreEDA ==="

# Helper function to run commands with sudo if not root
run_cmd() {
    if [ "$EUID" -ne 0 ]; then
        sudo "$@"
    else
        "$@"
    fi
}

# 1. Detect OS Family and Version
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS_ID="${ID}"
    OS_VER="${VERSION_ID}"
else
    echo "Cannot determine OS using /etc/os-release."
    exit 1
fi

echo "Detected OS: ${NAME} ${OS_VER}"

# Extract major release number
OS_MAJOR=$(echo "$OS_VER" | cut -d. -f1)

# ==============================================================================
# OS-SPECIFIC INSTALLATION PATHS
# ==============================================================================

if [ "$OS_ID" = "rocky" ] || [ "$OS_ID" = "rhel" ] || [ "$OS_ID" = "centos" ]; then
    echo "=== Running Configuration for Rocky Linux / RHEL ==="

    # Enable EPEL and CRB (Code Ready Builder) / PowerTools for required dependencies
    echo "Enabling EPEL and CRB/PowerTools repositories..."
    run_cmd dnf install -y epel-release dnf-plugins-core
    run_cmd dnf config-manager --set-enabled crb 2>/dev/null || run_cmd dnf config-manager --set-enabled powertools 2>/dev/null || true
    run_cmd dnf makecache

    REQUIRED_PACKAGES=(
        gcc
        gcc-c++
        make
        cmake
        wget
        patch
        pkgconfig
        flex
        bison
        python3
        gtk2-devel
        tcl
        tcl-devel
        gsl-devel
        suitesparse-devel
        fftw-devel
        readline-devel
        zlib-devel
        libX11-devel
        gnuplot
        ncurses-devel
        openssl-devel
        libffi-devel
        sqlite-devel
        tk-devel
        gdbm-devel
        glibc-devel
        bzip2-devel
        blas-devel
        lapack-devel
        openblas-devel
        libgfortran
        vte291-devel
    )

    MISSING_PACKAGES=()
    for pkg in "${REQUIRED_PACKAGES[@]}"; do
        if ! rpm -q "$pkg" >/dev/null 2>&1; then
            MISSING_PACKAGES+=("$pkg")
        fi
    done

    if [ ${#MISSING_PACKAGES[@]} -gt 0 ]; then
        echo "Missing DNF packages detected: ${MISSING_PACKAGES[*]}"
        echo "Installing missing packages..."
        run_cmd dnf install -y "${MISSING_PACKAGES[@]}"
    else
        echo "All required DNF packages are already installed!"
    fi

elif [ "$OS_ID" = "ubuntu" ] || [ "$OS_ID" = "debian" ]; then
    echo "=== Running Configuration for Ubuntu / Debian ==="

    run_cmd apt-get update -y
    run_cmd apt-get install -y wget gpg ca-certificates lsb-release dpkg-dev

    REQUIRED_PACKAGES=(
        build-essential
        libgtk2.0-dev
        pkg-config
        flex
        bison
        python3
        tcl8.6
        tcl8.6-dev
        libgsl-dev
        libsuitesparse-dev
        libfftw3-dev
        libreadline-dev
        zlib1g-dev
        libx11-dev
        gnuplot
        libncurses-dev
        libssl-dev
        libffi-dev
        libsqlite3-dev
        tk-dev
        libgdbm-dev
        libc6-dev
        libbz2-dev
        libblas-dev
        liblapack-dev
        libopenblas-dev
    )

    # Configure GCC compiler version selection based on Ubuntu release
    if [ "$OS_MAJOR" -eq 20 ]; then
        echo "Ubuntu 20 detected: Using default native system compiler."
        REQUIRED_PACKAGES+=(gcc g++)
    elif [ "$OS_MAJOR" -eq 22 ]; then
        echo "Ubuntu 22 detected: Including gcc-11 and g++-11."
        REQUIRED_PACKAGES+=(gcc-11 g++-11)
    else
        echo "Ubuntu ${OS_MAJOR} detected: Using modern standard system compiler."
        REQUIRED_PACKAGES+=(gcc g++)
    fi

    MISSING_PACKAGES=()
    for pkg in "${REQUIRED_PACKAGES[@]}"; do
        if ! dpkg -s "$pkg" >/dev/null 2>&1; then
            MISSING_PACKAGES+=("$pkg")
        fi
    done

    if [ ${#MISSING_PACKAGES[@]} -gt 0 ]; then
        echo "Missing APT packages detected: ${MISSING_PACKAGES[*]}"
        echo "Installing missing packages..."
        run_cmd apt-get install -y "${MISSING_PACKAGES[@]}"
    else
        echo "All required standard APT packages are already installed!"
    fi

    # Configure GCC-11 on Ubuntu 22
    if [ "$OS_MAJOR" -eq 22 ]; then
        echo "Configuring GCC-11 as default compiler for Ubuntu 22..."
        run_cmd update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 100 --slave /usr/bin/g++ g++ /usr/bin/g++-11
        run_cmd update-alternatives --set gcc /usr/bin/gcc-11
    fi

    # Check & Ensure CMake >= 3.19 via Kitware APT Repository
    CMAKE_VERSION=$(cmake --version 2>/dev/null | head -n 1 | awk '{print $3}')
    NEED_CMAKE_UPGRADE=1

    if [ -n "$CMAKE_VERSION" ]; then
        CMAKE_MAJOR=$(echo "$CMAKE_VERSION" | cut -d. -f1)
        CMAKE_MINOR=$(echo "$CMAKE_VERSION" | cut -d. -f2)
        
        if [ "$CMAKE_MAJOR" -gt 3 ] || { [ "$CMAKE_MAJOR" -eq 3 ] && [ "$CMAKE_MINOR" -ge 19 ]; }; then
            echo "Valid CMake version detected: $CMAKE_VERSION (>= 3.19)"
            NEED_CMAKE_UPGRADE=0
        fi
    fi

    if [ "$NEED_CMAKE_UPGRADE" -eq 1 ]; then
        echo "Installing modern CMake (>= 3.19) from official Kitware APT repository..."
        
        test -f /usr/share/keyrings/kitware-archive-keyring.gpg && run_cmd rm /usr/share/keyrings/kitware-archive-keyring.gpg
        wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | run_cmd tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null

        UBUNTU_CODENAME=$(lsb_release -cs)
        echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ ${UBUNTU_CODENAME} main" | run_cmd tee /etc/apt/sources.list.d/kitware.list >/dev/null

        run_cmd apt-get update
        run_cmd apt-get install -y cmake
    fi

    # Handling libvte-dev on Ubuntu
    if ! dpkg -s "libvte-dev" >/dev/null 2>&1; then
        echo "Checking availability of libvte-dev in APT repositories..."
        if apt-cache show libvte-dev >/dev/null 2>&1; then
            echo "Installing libvte-dev via APT..."
            run_cmd apt-get install -y libvte-dev
        else
            echo "Installing libvte-dev from source..."
            run_cmd apt-get install intltool -y
            
            BUILD_DIR=${HOME}/vte-build
            CURR_DIR=${PWD}
            mkdir -p ${BUILD_DIR} && cd "$BUILD_DIR"
            
            wget https://download.gnome.org/sources/vte/0.28/vte-0.28.2.tar.xz
            tar -xf vte-0.28.2.tar.xz
            cd vte-0.28.2
            
            ./configure --prefix=/usr --libexecdir=/usr/lib/vte --disable-static --disable-python
            make -j"$(nproc)"
            run_cmd make install
            
            cd ${CURR_DIR}
            rm -rf "$BUILD_DIR"
        fi
    else
        echo "libvte-dev is already installed!"
    fi

else
    echo "Unsupported OS family: ${OS_ID}"
    exit 1
fi

# ==============================================================================
# COMMON POST-INSTALLATION TASKS
# ==============================================================================

# Ensure Tcl headers are in /usr/include if needed
if [ -d "/usr/include/tcl8.6" ] && [ ! -f "/usr/include/tcl.h" ]; then
    echo "Copying Tcl headers to /usr/include/..."
    run_cmd cp -r /usr/include/tcl8.6/* /usr/include/
fi

export LibreEDA_INSTALL_DIR="Tool/build/"
export LIBREEDA_ROOT="Tool/build"

echo "=== Environment Ready ==="
echo "Active GCC version:"
gcc --version | head -n 1
echo "Active CMake version:"
cmake --version | head -n 1