# Pytorch Requirements Check Action

This action uses a pytorch docker to attempt installation of requirements.txt

## Inputs

### `file-to-run`

**Required** The name of shell script to execute and capture status output of
defult run_me.sh

## Outputs

### `file_run_status`

Numerical exit code resulting from `file-to-run`

## Example usage

uses: jdk-maxim/pytorch-requirements-check-action@master
with:
  file-to-run: 'shell_script_to_run.sh'
