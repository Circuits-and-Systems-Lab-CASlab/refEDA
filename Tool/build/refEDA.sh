#!/usr/bin/bash
# Generated Date: 2026-08-27 14:45:16
#
# Wrapper script for refEDA
# This script will have the following arguments:
# -no_gui
# -help
# -f <TCL script>
# -exit_on_error
# -threads <number of threads> (default 1, no less than 1 are allowed)
# -logs_prefix <prefix for log files> (default refEDA_history)
# -overwrite_logs (default false)
# -no_cmd (default false)
# -no_logs (default false)
#
# The first two are to be given to ./refEDA
# The rest are to set environment variables for the script
# All environment variables are optional and start with refEDA_

print_help() {
  echo "Usage: refEDA.sh [options]"
  echo "Options:"
  echo "  -no_gui                             Run refEDA without GUI"
  echo "  -help                               Print this help message"
  echo "  -f <TCL script>                     Source specified TCL script upon startup"
  echo "  -exit_on_error                      Close refEDA if any error occurs"
  echo "  -threads <number of threads>        Specify number of threads (default: 1, no less than 1 are allowed)"
  echo "  -logs_prefix <prefix for log files> Specify prefix for log files (default: refEDA_history)"
  echo "  -overwrite_logs                     Overwrite most recently created log files (default false)"
  echo "  -no_cmd                             Don't create command log files (default false)"
  echo "  -no_logs                            Don't create log files (default false)"
}

export refEDA_ROOT_DIR=$(dirname "$(realpath "$0")")

# Set default values
export refEDA_THREADS=1
export refEDA_LOGS_PREFIX="$(pwd)/refEDA_history"
export refEDA_OVERWRITE_LOGS=0
export refEDA_NO_CMD=0
export refEDA_NO_LOGS=0

refEDA_ARGS=""

# Robust argument parsing
while [[ $# -gt 0 ]]; do
  case "$1" in
    -no_gui)
      refEDA_ARGS="${refEDA_ARGS} -no_gui"
      shift
      ;;
    -help)
      print_help
      exit 0
      ;;
    -f)
      refEDA_ARGS="${refEDA_ARGS} -f \"$2\""
      shift 2
      ;;
    -exit_on_error)
      refEDA_ARGS="${refEDA_ARGS} -qamode"
      shift
      ;;
    -threads)
      refEDA_THREADS="$2"
      if [[ "$refEDA_THREADS" -lt 1 ]]; then
        echo "Number of threads must be at least 1"
        exit 1
      fi
      export refEDA_THREADS
      shift 2
      ;;
    -logs_prefix)
      refEDA_LOGS_PREFIX="$(realpath "$2")"
      export refEDA_LOGS_PREFIX
      shift 2
      ;;
    -overwrite_logs)
      export refEDA_OVERWRITE_LOGS=1
      shift
      ;;
    -no_cmd)
      export refEDA_NO_CMD=1
      shift
      ;;
    -no_logs)
      export refEDA_NO_LOGS=1
      shift
      ;;
    *)
      # Pass unhandled arguments
      refEDA_ARGS="${refEDA_ARGS} $1"
      shift
      ;;
  esac
done

# Log setup
if [[ $refEDA_NO_LOGS -eq 0 ]]; then
  # We need just the filename prefix to search for numbers correctly
  PREFIX_NAME=$(basename "$refEDA_LOGS_PREFIX")

  if [[ $refEDA_OVERWRITE_LOGS -eq 1 ]]; then
    # Get highest log/cmd number
    LOG_NUM=$(ls -1 "${refEDA_LOGS_PREFIX}"*.log 2>/dev/null | sed -n "s/.*${PREFIX_NAME}\([0-9]*\)\.log$/\1/p" | sort -n | tail -n 1)
    CMD_NUM=$(ls -1 "${refEDA_LOGS_PREFIX}"*.cmd 2>/dev/null | sed -n "s/.*${PREFIX_NAME}\([0-9]*\)\.cmd$/\1/p" | sort -n | tail -n 1)

    LOG_NUM=${LOG_NUM:-0}
    CMD_NUM=${CMD_NUM:-0}

    if [[ $LOG_NUM -gt $CMD_NUM ]]; then
      export refEDA_LOG_ID=$LOG_NUM
    else
      export refEDA_LOG_ID=$CMD_NUM
    fi
  else
    # Find first available number
    if [[ ! -f "${refEDA_LOGS_PREFIX}.log" && ! -f "${refEDA_LOGS_PREFIX}.cmd" ]]; then
      export refEDA_LOG_ID=""
    else
      export refEDA_LOG_ID=1
      while [[ -f "${refEDA_LOGS_PREFIX}${refEDA_LOG_ID}.log" || -f "${refEDA_LOGS_PREFIX}${refEDA_LOG_ID}.cmd" ]]; do
        export refEDA_LOG_ID=$((refEDA_LOG_ID+1))
      done
    fi
  fi

  # Safely check string equality to avoid crashes
  if [[ "$refEDA_LOG_ID" == "0" ]]; then
    export refEDA_LOG_ID=""
  fi

  if [[ $refEDA_OVERWRITE_LOGS -eq 1 ]]; then
    rm -f "${refEDA_LOGS_PREFIX}${refEDA_LOG_ID}.log" "${refEDA_LOGS_PREFIX}${refEDA_LOG_ID}.cmd" 2>/dev/null
  fi

  # Set CMD file with the correct naming convention
  export refEDA_CMD_FILE="${refEDA_LOGS_PREFIX}${refEDA_LOG_ID}.cmd"
fi

# Run refEDA
if [[ $refEDA_NO_LOGS -eq 0 ]]; then
  # 2>&1 captures errors. 
  # tee >(sed ...) strips ANSI color codes before saving to the file so it's readable.
  "$refEDA_ROOT_DIR/refEDA" ${refEDA_ARGS} 2>&1 | tee -i >(sed $'s/\033\\[[0-9;?]*[a-zA-Z]//g; s/\r//g' > "${refEDA_LOGS_PREFIX}${refEDA_LOG_ID}.log")
  
  # Capture correct exit code
  REFEDA_EXIT_CODE=${PIPESTATUS[0]}
else
  "$refEDA_ROOT_DIR/refEDA" ${refEDA_ARGS}
  REFEDA_EXIT_CODE=$?
fi

# run stty sane if refEDA exits with error
if [[ $REFEDA_EXIT_CODE -ne 0 ]]; then
    stty sane
fi

exit $REFEDA_EXIT_CODE