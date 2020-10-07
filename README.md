# Tensor Flow Docker Action'

This action uses the tensorflow docker to run any required tests

## Inputs

### `file-to-run`

**Required** The name of shell script to execute and capture status output of
defult run_me.sh

## Outputs

### `file_run_status`

Numerical exit code resulting from `file-to-run`

## Example usage

uses: jdk-maxim/tensorflow-docker-action@master
with:
  file-to-run: 'shell_script_to_run.sh'
