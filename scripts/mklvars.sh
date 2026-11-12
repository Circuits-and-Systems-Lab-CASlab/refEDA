#!/bin/sh
#
# Copyright (C) 2003-2015 Intel Corporation. All rights reserved.
#
# The information and source code contained herein is the exclusive property
# of Intel Corporation and may not be disclosed, examined, or reproduced in
# whole or in part without explicit written authorization from the Company.
#

mkl_help() {
    echo ""
    echo "Syntax:"
    echo "  source $SCRIPT_NAME <arch> [MKL_interface] [${MOD_NAME}]"
    echo ""
    echo "   <arch> must be one of the following"
    echo "       ia32         : Setup for IA-32 architecture"
    echo "       intel64      : Setup for Intel(R) 64 architecture"
    echo "       mic          : Setup for Intel(R) Many Integrated Core Architecture"
    echo ""
    echo "   ${MOD_NAME} (optional) - set path to MKL F95 modules"
    echo ""
    echo "   MKL_interface (optional) - MKL programming interface for intel64"
    echo "                              Not applicable without ${MOD_NAME}"
    echo "       lp64         : 4 bytes integer (default)"
    echo "       ilp64        : 8 bytes integer"
    echo ""
}

set_mkl_env() {
    CPRO_PATH=$ASP_INSTALL_DIR/INTEL-MKL/composer_xe_2015.5.223
    export MKLROOT=${CPRO_PATH}/mkl

    typeset SCRIPT_NAME=$0
    typeset MOD_NAME=mod

    typeset MKL_LP64_ILP64=
    typeset MKL_MOD=
    typeset MKL_TARGET_ARCH=
    typeset MKLVARS_VERBOSE=
    typeset MKL_MIC_ARCH=
    typeset MKL_BAD_SWITCH=
    typeset OLD_LD_LIBRARY_PATH=
    typeset OLD_LIBRARY_PATH=
    typeset OLD_MIC_LD_LIBRARY_PATH=
    typeset OLD_NLSPATH=
    typeset OLD_CPATH=

    if [ -z "$1" ] ; then
        mkl_help
    else

        while [ -n "$1" ]; do
           if   [ "$1" = "ia32" ]        ; then MKL_TARGET_ARCH=ia32;
           elif [ "$1" = "intel64" ]     ; then MKL_TARGET_ARCH=intel64; MKL_MIC_ARCH=mic;
           elif [ "$1" = "mic" ]         ; then MKL_TARGET_ARCH=mic;     MKL_MIC_ARCH=mic;
           elif [ "$1" = "lp64" ]        ; then MKL_LP64_ILP64=lp64;
           elif [ "$1" = "ilp64" ]       ; then MKL_LP64_ILP64=ilp64;
           elif [ "$1" = "${MOD_NAME}" ] ; then MKL_MOD=${MOD_NAME};
           elif [ "$1" = "verbose" ]     ; then MKLVARS_VERBOSE=verbose;
           else
               MKL_BAD_SWITCH=$1
               break 10
           fi
           shift;
        done

        if [ -n "${MKL_BAD_SWITCH}" ] ; then

            echo
            echo "ERROR: Unknown option '${MKL_BAD_SWITCH}'"
            mkl_help

        else

            if [ -z "${MKL_TARGET_ARCH}" ] ; then

                echo
                echo "ERROR: architecture is not defined. Accepted values: ia32, intel64, mic"
                mkl_help

            else

                if [ -n "${LD_LIBRARY_PATH}" ] ; then OLD_LD_LIBRARY_PATH=":${LD_LIBRARY_PATH}"; fi
                export LD_LIBRARY_PATH="${CPRO_PATH}/compiler/lib/${MKL_TARGET_ARCH}:${MKLROOT}/lib/${MKL_TARGET_ARCH}${OLD_LD_LIBRARY_PATH}"
                if [ -n "${MKL_MIC_ARCH}" ]; then
                    if [ "${MKL_TARGET_ARCH}" = "mic" ] ; then
                        export LD_LIBRARY_PATH="${CPRO_PATH}/compiler/lib/intel64:${MKLROOT}/lib/intel64:${LD_LIBRARY_PATH}"
                    fi
                    if [ -d "/opt/intel/mic" ]; then
                        export LD_LIBRARY_PATH="/opt/intel/mic/coi/host-linux-release/lib:/opt/intel/mic/myo/lib:${LD_LIBRARY_PATH}"
                    fi
                fi

                if [ -n "${LIBRARY_PATH}" ] ; then OLD_LIBRARY_PATH=":${LIBRARY_PATH}"; fi
                if [ "${MKL_TARGET_ARCH}" = "mic" ] ; then
                   export LIBRARY_PATH="${CPRO_PATH}/compiler/lib/intel64:${MKLROOT}/lib/intel64${OLD_LIBRARY_PATH}"
                else
                   export LIBRARY_PATH="${CPRO_PATH}/compiler/lib/${MKL_TARGET_ARCH}:${MKLROOT}/lib/${MKL_TARGET_ARCH}${OLD_LIBRARY_PATH}"
                fi

                if [ -n "${MKL_MIC_ARCH}" ]; then
                    if [ -n "${MIC_LD_LIBRARY_PATH}" ]; then OLD_MIC_LD_LIBRARY_PATH=":${MIC_LD_LIBRARY_PATH}"; fi
                    export MIC_LD_LIBRARY_PATH="${CPRO_PATH}/compiler/lib/${MKL_MIC_ARCH}:${MKLROOT}/lib/${MKL_MIC_ARCH}${OLD_MIC_LD_LIBRARY_PATH}"
                    if [ -d "/opt/intel/mic" ]; then
                        export MIC_LD_LIBRARY_PATH="/opt/intel/mic/coi/device-linux-release/lib:/opt/intel/mic/myo/lib:${MIC_LD_LIBRARY_PATH}"
                    fi
                fi

                if [ -n "${NLSPATH}" ] ; then OLD_NLSPATH=":${NLSPATH}"; fi

                export NLSPATH="${MKLROOT}/lib/${MKL_TARGET_ARCH}/locale/%l_%t/%N${OLD_NLSPATH}"
                if [ "${MKL_TARGET_ARCH}" = "mic" ] ; then
                    export NLSPATH="${MKLROOT}/lib/intel64/locale/%l_%t/%N:${NLSPATH}"
                fi

                if [ -z "${MANPATH}" ] ; then
                    export MANPATH="${CPRO_PATH}/man/en_US:`manpath`"
                else
                    export MANPATH="${CPRO_PATH}/man/en_US:${MANPATH}"
                fi

                if  [ -n "$CPATH" ] ; then OLD_CPATH=":${CPATH}"; fi
                export CPATH="${MKLROOT}/include${OLD_CPATH}"

                if [ "${MKL_MOD}" = "${MOD_NAME}" ] ; then
                    if [ "${MKL_TARGET_ARCH}" = "ia32" ] ; then
                        MKL_LP64_ILP64=
                    else
                        if [ -z "$MKL_LP64_ILP64" ] ; then
                            MKL_LP64_ILP64=lp64
                        fi
                    fi
                    export CPATH="${CPATH}:${MKLROOT}/include/${MKL_TARGET_ARCH}/${MKL_LP64_ILP64}"
                    if [ "${MKL_TARGET_ARCH}" = "mic" ] ; then
                        export CPATH="${CPATH}:${MKLROOT}/include/intel64/${MKL_LP64_ILP64}"
                    fi
                fi

                if [ "${MKLVARS_VERBOSE}" = "verbose" ] ; then
                    echo LD_LIBRARY_PATH=${LD_LIBRARY_PATH}
                    echo LIBRARY_PATH=${LIBRARY_PATH}
                    echo MIC_LD_LIBRARY_PATH=${MIC_LD_LIBRARY_PATH}
                    echo NLSPATH=${NLSPATH}
                    echo MANPATH=${MANPATH}
                    echo CPATH=${CPATH}
                fi
            fi
        fi
    fi
}

set_mkl_env "$@"
