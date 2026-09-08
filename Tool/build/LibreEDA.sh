#!/usr/bin/bash
# Generated Date: 2026-09-07 17:15:26
#
# Wrapper script for pathviz
# This script will have the following arguments:
# -no_gui
# -help
# -f <TCL script>
# -exit_on_error
# -threads <number of threads> (default 1, no less than 1 are allowed)
# -logs_prefix <prefix for log files> (default pathviz_history)
# -overwrite_logs (default false)
# -no_cmd (default false)
#
# The first two are to be given to ./pathviz
# The rest are to set environment variables for the script
# All environment variables are optional and start with pathviz_

print_help() {
  echo "Usage: pathviz [options]"
  echo "Options:"
  echo "  -no_gui                             Run pathviz without GUI"
  echo "  -help                               Print this help message"
  echo "  -f <TCL script>                     Source specified TCL script upon startup"
  echo "  -exit_on_error                      Close pathviz if any error occurs"
  echo "  -threads <number of threads>        Specify number of threads (default: 1, no less than 1 are allowed)"
  echo "  -logs_prefix <prefix for log files> Specify prefix for log files (default: pathviz_history.cmd)"
  echo "  -overwrite_logs                     Overwrite most recently created log files (default false)"
  echo "  -no_cmd                             Don't create command log files (default false)"
  echo "  -no_logs                            Don't create log files (default false)"
}

export pathviz_ROOT_DIR=$(dirname $(realpath $0))

# Set default values
# Number of threads
export pathviz_THREADS=1

# Prefix for log files
export pathviz_LOGS_PREFIX=$(pwd)/pathviz_history

# Overwrite log files
export pathviz_OVERWRITE_LOGS=0

# Don't print commands
export pathviz_NO_CMD=0

# Don't print logs
export pathviz_NO_LOGS=0

# Parse arguments
pathviz_ARGS=""

if [[ $@ == *"-no_gui"* ]]; then
    pathviz_ARGS="${pathviz_ARGS} -no_gui"
fi
if [[ $@ == *"-help"* ]]; then
  print_help
  exit 0
fi

if [[ $@ == *"-f"* ]]; then
  # get file from argument after -f
  FILENAME=$(echo $@ | sed -n 's/.*-f \([^ ]*\).*/\1/p')
  pathviz_ARGS="${pathviz_ARGS} -f ${FILENAME}"
fi

if [[ $@ == *"-exit_on_error"* ]]; then
    pathviz_ARGS="${pathviz_ARGS} -qamode"
fi

# Get number of threads
if [[ $@ == *"-threads"* ]]; then
  # get number of threads from argument after -threads
  pathviz_THREADS=$(echo $@ | sed -n 's/.*-threads \([^ ]*\).*/\1/p')
  if [[ $pathviz_THREADS -lt 1 ]]; then
    echo "Number of threads must be at least 1"
    exit 1
  fi
  export pathviz_THREADS
fi

# Get prefix for log files
if [[ $@ == *"-logs_prefix"* ]]; then
  # get prefix from argument after -logs_prefix
  pathviz_LOGS_PREFIX=$(realpath $(echo $@ | sed -n 's/.*-logs_prefix \([^ ]*\).*/\1/p'))
  export pathviz_LOGS_PREFIX
fi

# Get overwrite log files
if [[ $@ == *"-overwrite_logs"* ]]; then
  export pathviz_OVERWRITE_LOGS=1
fi

# Get no command
if [[ $@ == *"-no_cmd"* ]]; then
  export pathviz_NO_CMD=1
fi

# Get no logs
if [[ $@ == *"-no_logs"* ]]; then
  export pathviz_NO_LOGS=1
fi

# Determine log file number
if [[ $pathviz_OVERWRITE_LOGS -eq 1 ]]; then
  # Get log file with highest number
  LOG_NUM=$(ls -1 ${pathviz_LOGS_PREFIX}.log* 2>/dev/null | sed -n 's/.*\.log\([0-9]*\)/\1/p' | sort -n | tail -n 1)

  # Get .cmd file with highest number
  CMD_NUM=$(ls -1 ${pathviz_LOGS_PREFIX}.cmd* 2>/dev/null | sed -n 's/.*\.cmd\([0-9]*\)/\1/p' | sort -n | tail -n 1)

  if [[ $LOG_NUM == "" ]]; then
    LOG_NUM=0
  fi
  if [[ $CMD_NUM == "" ]]; then
    CMD_NUM=0
  fi

  # set pathviz_LOG_ID as the higher of the two
  if [[ $LOG_NUM -gt $CMD_NUM ]]; then
    export pathviz_LOG_ID=$LOG_NUM
  else
    export pathviz_LOG_ID=$CMD_NUM
  fi
else
  # find first available number in both .log and .cmd files
  if [[ ! -f ${pathviz_LOGS_PREFIX}.log && ! -f ${pathviz_LOGS_PREFIX}.cmd ]]; then
    export pathviz_LOG_ID=""

  else
    export pathviz_LOG_ID=1
    while [[ -f ${pathviz_LOGS_PREFIX}.log${pathviz_LOG_ID} || -f ${pathviz_LOGS_PREFIX}.cmd${pathviz_LOG_ID} ]]; do
      export pathviz_LOG_ID=$((pathviz_LOG_ID+1))
    done

  fi
fi

# set pathviz_LOG_ID to "" if it is 0
if [[ $pathviz_LOG_ID -eq 0 ]]; then
  export pathviz_LOG_ID=""

fi

if [[ $pathviz_OVERWRITE_LOGS -eq 1 ]]; then
  rm ${pathviz_LOGS_PREFIX}.log${pathviz_LOG_ID} ${pathviz_LOGS_PREFIX}.cmd${pathviz_LOG_ID} 2>/dev/null
fi

export pathviz_CMD_FILE=${pathviz_LOGS_PREFIX}.cmd${pathviz_LOG_ID}

# Run pathviz
# Don't create log files if -no_logs is specified
if [[ $pathviz_NO_LOGS -eq 1 ]]; then
  $pathviz_ROOT_DIR/pathviz ${pathviz_ARGS}
else
  $pathviz_ROOT_DIR/pathviz ${pathviz_ARGS} | tee -i ${pathviz_LOGS_PREFIX}.log${pathviz_LOG_ID}
fi

# run stty sane if pathviz exits with error
if [[ $? -ne 0 ]]
then
    stty sane
fi
