#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "Attempting to run $2"
file_run_status=$($2)
echo "::set-output name=file_run_status::$file_run_status"
