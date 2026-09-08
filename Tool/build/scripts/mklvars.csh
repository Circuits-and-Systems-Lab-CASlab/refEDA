#!/bin/tcsh
#
# Copyright (C) 2003-2015 Intel Corporation. All rights reserved.
#
# The information and source code contained herein is the exclusive property
# of Intel Corporation and may not be disclosed, examined, or reproduced in
# whole or in part without explicit written authorization from the Company.
#

set __mkl_tmp_cpro_path=${ASP_INSTALL_DIR}/INTEL-MKL/composer_xe_2015.5.223
setenv MKLROOT ${__mkl_tmp_cpro_path}/mkl

set __mkl_tmp_script_name="mklvars.csh"
set __mkl_tmp_mod_name="mod"

set __mkl_tmp_target_arch=""
set __mkl_tmp_lp64_ilp64=""
set __mkl_tmp_mod=""
set __mkl_tmp_mklvars_verbose=""
set __mkl_tmp_mic_arch=""

if ( "$1" == "" ) then
    goto Help
endif

while ( "$1" != "" )
   if      ( "$1" == "ia32"      ) then
       set __mkl_tmp_target_arch="ia32"
   else if ( "$1" == "intel64"   ) then
       set __mkl_tmp_target_arch="intel64"
       set __mkl_tmp_mic_arch="mic"
   else if ( "$1" == "mic"       ) then
       set __mkl_tmp_target_arch="mic"
       set __mkl_tmp_mic_arch="mic"
   else if ( "$1" == "lp64"      ) then
       set __mkl_tmp_lp64_ilp64="lp64"
   else if ( "$1" == "ilp64"     ) then
       set __mkl_tmp_lp64_ilp64="ilp64"
   else if ( "$1" == ${__mkl_tmp_mod_name} ) then
       set __mkl_tmp_mod="${__mkl_tmp_mod_name}"
   else if ( "$1" == "verbose"   ) then
       set __mkl_tmp_mklvars_verbose="verbose"
   else
       echo
       echo "ERROR: Unknown option '$1'"
       goto Help
   endif
   shift
end

if ( "${__mkl_tmp_target_arch}" == "" ) then
   echo
   echo "ERROR: architecture is not defined. Accepted values: ia32, intel64, mic"
   goto Help
endif

if ( ${?LD_LIBRARY_PATH} ) then
    setenv LD_LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/${__mkl_tmp_target_arch}:${MKLROOT}/lib/${__mkl_tmp_target_arch}:${LD_LIBRARY_PATH}"
else
    setenv LD_LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/${__mkl_tmp_target_arch}:${MKLROOT}/lib/${__mkl_tmp_target_arch}"
endif
if ( -d "/opt/intel/mic" ) then
if ( "${__mkl_tmp_mic_arch}" != "" ) then
    setenv LD_LIBRARY_PATH "/opt/intel/mic/coi/host-linux-release/lib:/opt/intel/mic/myo/lib:${LD_LIBRARY_PATH}"
endif
endif
if ( "${__mkl_tmp_target_arch}" == "mic" ) then
    setenv LD_LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/intel64:${MKLROOT}/lib/intel64:${LD_LIBRARY_PATH}"
endif

if ( ${?LIBRARY_PATH} ) then
    if ( "${__mkl_tmp_target_arch}" == "mic" ) then
        setenv LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/intel64:${MKLROOT}/lib/intel64:${LIBRARY_PATH}"
    else
        setenv LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/${__mkl_tmp_target_arch}:${MKLROOT}/lib/${__mkl_tmp_target_arch}:${LIBRARY_PATH}"
    endif
else
    if ( "${__mkl_tmp_target_arch}" == "mic" ) then
        setenv LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/intel64:${MKLROOT}/lib/intel64"
    else
        setenv LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/${__mkl_tmp_target_arch}:${MKLROOT}/lib/${__mkl_tmp_target_arch}"
    endif
endif

if ( "${__mkl_tmp_mic_arch}" != "" ) then
    if ( ${?MIC_LD_LIBRARY_PATH} ) then
        setenv MIC_LD_LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/${__mkl_tmp_mic_arch}:${MKLROOT}/lib/${__mkl_tmp_mic_arch}:${MIC_LD_LIBRARY_PATH}"
    else
        setenv MIC_LD_LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/${__mkl_tmp_mic_arch}:${MKLROOT}/lib/${__mkl_tmp_mic_arch}"
    endif
    if ( -d "/opt/intel/mic" ) then
        setenv MIC_LD_LIBRARY_PATH "${__mkl_tmp_cpro_path}/compiler/lib/${__mkl_tmp_mic_arch}:${MKLROOT}/lib/${__mkl_tmp_mic_arch}:/opt/intel/mic/coi/device-linux-release/lib:/opt/intel/mic/myo/lib:${MIC_LD_LIBRARY_PATH}"
    endif
endif

if ( ${?NLSPATH} ) then
    setenv NLSPATH "${MKLROOT}/lib/${__mkl_tmp_target_arch}/locale/%l_%t/%N:${NLSPATH}"
else
    setenv NLSPATH "${MKLROOT}/lib/${__mkl_tmp_target_arch}/locale/%l_%t/%N"
endif
if ( "${__mkl_tmp_target_arch}" == "mic" ) then
    setenv NLSPATH "${MKLROOT}/lib/intel64/locale/%l_%t/%N:${NLSPATH}"
endif

if ( ${?MANPATH} ) then
    setenv MANPATH "${__mkl_tmp_cpro_path}/man/en_US:${MANPATH}"
else
    setenv MANPATH "${__mkl_tmp_cpro_path}/man/en_US:`manpath`"
endif

if ( ${?CPATH} ) then
    setenv CPATH "${MKLROOT}/include:${CPATH}"
else
    setenv CPATH "${MKLROOT}/include"
endif

if ( "${__mkl_tmp_mod}" == "${__mkl_tmp_mod_name}" )  then
    if ( "${__mkl_tmp_target_arch}" == "ia32" ) then
        set __mkl_tmp_lp64_ilp64=""
    else
        if ( "$__mkl_tmp_lp64_ilp64" == "" ) then
            set __mkl_tmp_lp64_ilp64="lp64"
        endif
    endif
    setenv CPATH "${CPATH}:${MKLROOT}/include/${__mkl_tmp_target_arch}/${__mkl_tmp_lp64_ilp64}"
    if ( "${__mkl_tmp_target_arch}" == "mic" ) then
        setenv CPATH "${CPATH}:${MKLROOT}/include/intel64/${__mkl_tmp_lp64_ilp64}"
    endif
endif

if ( "${__mkl_tmp_mklvars_verbose}" == "verbose" ) then
    echo LD_LIBRARY_PATH=${LD_LIBRARY_PATH}
    echo LIBRARY_PATH=${LIBRARY_PATH}
    echo MIC_LD_LIBRARY_PATH=${MIC_LD_LIBRARY_PATH}
    echo NLSPATH=${NLSPATH}
    echo MANPATH=${MANPATH}
    echo CPATH=${CPATH}
endif

goto End

Help:
    echo ""
    echo "Syntax:"
    echo "  source $__mkl_tmp_script_name <arch> [MKL_interface] [${__mkl_tmp_mod_name}]"
    echo ""
    echo "   <arch> must be one of the following"
    echo "       ia32         : Setup for IA-32 architecture"
    echo "       intel64      : Setup for Intel(R) 64 architecture"
    echo "       mic          : Setup for Intel(R) Many Integrated Core Architecture"
    echo ""
    echo "   ${__mkl_tmp_mod_name} (optional) - set path to MKL F95 modules"
    echo ""
    echo "   MKL_interface (optional) - MKL programming interface for intel64"
    echo "                              Not applicable without ${__mkl_tmp_mod_name}"
    echo "       lp64         : 4 bytes integer (default)"
    echo "       ilp64        : 8 bytes integer"
    echo ""
    exit 1;

End: # Clean up of internal settings
    unset __mkl_tmp_cpro_path
    unset __mkl_tmp_script_name
    unset __mkl_tmp_mod_name
    unset __mkl_tmp_target_arch
    unset __mkl_tmp_lp64_ilp64
    unset __mkl_tmp_mod
    unset __mkl_tmp_mklvars_verbose
    unset __mkl_tmp_mic_arch
