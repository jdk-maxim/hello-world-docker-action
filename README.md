# Pytorch Requirements Check Action

This action uses a pytorch docker to execute a shell script.  The script may be used for generic testing needs.

## Inputs

### `file-to-run`

**Required** The name of shell script to execute and capture status output of
defult run_me.sh

## Outputs

### `file_run_status`

Numerical exit code resulting from `file-to-run`

## Example Usage
```yaml
uses: MaximIntegratedAI/pytorch-docker-action@v1
with:
  file-to-run: 'run_me.sh'
```
