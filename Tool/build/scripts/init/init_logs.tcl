# Generated Date: 2026-10-20 11:37:48
set __refEDA_filename ""

# puts "refEDA_LOGS_PREFIX: $::env(refEDA_LOGS_PREFIX)"
# puts "refEDA_OVERWRITE_LOGS: $::env(refEDA_OVERWRITE_LOGS)"

set __refEDA_filename $::env(refEDA_CMD_FILE)


set __refEDA_log_file [open $__refEDA_filename "a"]
puts $__refEDA_log_file ""
close $__refEDA_log_file

proc logCommand {__refEDA_command op} {
    global __refEDA_filename
    set __refEDA_log_file [open $__refEDA_filename "a"]

    if {[string match "*__refEDA_*" $__refEDA_command] || [string match "*puts file*" $__refEDA_command]} {
      close $__refEDA_log_file
      return
    }

    if {[string match "^source*" $__refEDA_command]} {
      puts $__refEDA_log_file "source ${__refEDA_command}"
    }

    puts $__refEDA_log_file $__refEDA_command
    close $__refEDA_log_file
}

set allCommands [info commands]

# Set up a trace on each command
foreach cmd $allCommands {

    # skip commands: trace, if, proc, logCommand, open, close, string, continue, break, return, info
    if {$cmd eq "trace" || $cmd eq "if" || $cmd eq "proc" || $cmd eq "logCommand" || $cmd eq "open" || $cmd eq "close" || $cmd eq "string" || $cmd eq "continue" || $cmd eq "break" || $cmd eq "return" || $cmd eq "info"} {
        continue
    }

    trace add execution $cmd enter logCommand
}
