# Generated Date: 2026-10-20 11:37:48
# Initialize the TCL environment except if $::env(NO_CMD) is set to 1
if {[info exists ::env(refEDA_NO_CMD)] && $::env(refEDA_NO_CMD) != 1} {
  source $::env(refEDA_ROOT_DIR)/scripts/init/init_logs.tcl
}


# run set_max_threads if $::env(refEDA_THREADS) is set and greater than 1
if {[info exists ::env(refEDA_THREADS)] && $::env(refEDA_THREADS) > 1} {
    set_max_threads $::env(refEDA_THREADS)
}
