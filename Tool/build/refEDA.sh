#!/usr/bin/bash
# Generated Date: 2026-08-27 14:45:16
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
# -no_logs (default false)
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
  echo "  -logs_prefix <prefix for log files> Specify prefix for log files (default: pathviz_history)"
  echo "  -overwrite_logs                     Overwrite most recently created log files (default false)"
  echo "  -no_cmd                             Don't create command log files (default false)"
  echo "  -no_logs                            Don't create log files (default false)"
}

export pathviz_ROOT_DIR=$(dirname "$(realpath "$0")")

# Set default values
export pathviz_THREADS=1
export pathviz_LOGS_PREFIX="$(pwd)/pathviz_history"
export pathviz_OVERWRITE_LOGS=0
export pathviz_NO_CMD=0
export pathviz_NO_LOGS=0

pathviz_ARGS=""

# Robust argument parsing
while [[ $# -gt 0 ]]; do
  case "$1" in
    -no_gui)
      pathviz_ARGS="${pathviz_ARGS} -no_gui"
      shift
      ;;
    -help)
      print_help
      exit 0
      ;;
    -f)
      pathviz_ARGS="${pathviz_ARGS} -f \"$2\""
      shift 2
      ;;
    -exit_on_error)
      pathviz_ARGS="${pathviz_ARGS} -qamode"
      shift
      ;;
    -threads)
      pathviz_THREADS="$2"
      if [[ "$pathviz_THREADS" -lt 1 ]]; then
        echo "Number of threads must be at least 1"
        exit 1
      fi
      export pathviz_THREADS
      shift 2
      ;;
    -logs_prefix)
      pathviz_LOGS_PREFIX="$(realpath "$2")"
      export pathviz_LOGS_PREFIX
      shift 2
      ;;
    -overwrite_logs)
      export pathviz_OVERWRITE_LOGS=1
      shift
      ;;
    -no_cmd)
      export pathviz_NO_CMD=1
      shift
      ;;
    -no_logs)
      export pathviz_NO_LOGS=1
      shift
      ;;
    *)
      # Pass unhandled arguments
      pathviz_ARGS="${pathviz_ARGS} $1"
      shift
      ;;
  esac
done

# Log setup
if [[ $pathviz_NO_LOGS -eq 0 ]]; then
  # We need just the filename prefix to search for numbers correctly
  PREFIX_NAME=$(basename "$pathviz_LOGS_PREFIX")

  if [[ $pathviz_OVERWRITE_LOGS -eq 1 ]]; then
    # Get highest log/cmd number
    LOG_NUM=$(ls -1 "${pathviz_LOGS_PREFIX}"*.log 2>/dev/null | sed -n "s/.*${PREFIX_NAME}\([0-9]*\)\.log$/\1/p" | sort -n | tail -n 1)
    CMD_NUM=$(ls -1 "${pathviz_LOGS_PREFIX}"*.cmd 2>/dev/null | sed -n "s/.*${PREFIX_NAME}\([0-9]*\)\.cmd$/\1/p" | sort -n | tail -n 1)

    LOG_NUM=${LOG_NUM:-0}
    CMD_NUM=${CMD_NUM:-0}

    if [[ $LOG_NUM -gt $CMD_NUM ]]; then
      export pathviz_LOG_ID=$LOG_NUM
    else
      export pathviz_LOG_ID=$CMD_NUM
    fi
  else
    # Find first available number
    if [[ ! -f "${pathviz_LOGS_PREFIX}.log" && ! -f "${pathviz_LOGS_PREFIX}.cmd" ]]; then
      export pathviz_LOG_ID=""
    else
      export pathviz_LOG_ID=1
      while [[ -f "${pathviz_LOGS_PREFIX}${pathviz_LOG_ID}.log" || -f "${pathviz_LOGS_PREFIX}${pathviz_LOG_ID}.cmd" ]]; do
        export pathviz_LOG_ID=$((pathviz_LOG_ID+1))
      done
    fi
  fi

  # Safely check string equality to avoid crashes
  if [[ "$pathviz_LOG_ID" == "0" ]]; then
    export pathviz_LOG_ID=""
  fi

  if [[ $pathviz_OVERWRITE_LOGS -eq 1 ]]; then
    rm -f "${pathviz_LOGS_PREFIX}${pathviz_LOG_ID}.log" "${pathviz_LOGS_PREFIX}${pathviz_LOG_ID}.cmd" 2>/dev/null
  fi

  # Set CMD file with the correct naming convention
  export pathviz_CMD_FILE="${pathviz_LOGS_PREFIX}${pathviz_LOG_ID}.cmd"
fi

# Run pathviz
if [[ $pathviz_NO_LOGS -eq 0 ]]; then
  # 2>&1 captures errors. 
  # tee >(sed ...) strips ANSI color codes before saving to the file so it's readable.
  "$pathviz_ROOT_DIR/pathviz" ${pathviz_ARGS} 2>&1 | tee -i >(sed $'s/\033\\[[0-9;?]*[a-zA-Z]//g; s/\r//g' > "${pathviz_LOGS_PREFIX}${pathviz_LOG_ID}.log")
  
  # Capture correct exit code
  PATHVIZ_EXIT_CODE=${PIPESTATUS[0]}
else
  "$pathviz_ROOT_DIR/pathviz" ${pathviz_ARGS}
  PATHVIZ_EXIT_CODE=$?
fi

# run stty sane if pathviz exits with error
if [[ $PATHVIZ_EXIT_CODE -ne 0 ]]; then
    stty sane
fi

exit $PATHVIZ_EXIT_CODE