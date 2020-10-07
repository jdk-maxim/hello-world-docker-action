#!/bin/sh -l

PATH_TO_WORKSPACE="/github/workspace/"
PATH_TO_RUN_FILE=$PATH_TO_WORKSPACE$1

echo "Attempting to run $PATH_TO_RUN_FILE"
$PATH_TO_RUN_FILE
file_run_status=$?
echo "::set-output name=file_run_status::$file_run_status"
