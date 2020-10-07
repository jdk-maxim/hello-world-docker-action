#!/bin/sh -l

PATH_TO_WORKSPACE="/github/workspace/"
PATH_TO_RUN_FILE=$PATH_TO_WORKSPACE$2

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "Attempting to run $PATH_TO_RUN_FILE"
file_run_status=$(PATH_TO_RUN_FILE)
echo "::set-output name=file_run_status::$file_run_status"
