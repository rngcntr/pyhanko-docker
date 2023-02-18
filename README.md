# pyhanko-docker

## Usage

Exactly like pyhanko, precedec by `docker run`.

### Example for signing

```bash
docker run -it --rm \
    -v /path/to/local/directory:/mnt \
    pyhanko --config pyhanko.yaml sign addsig \
    --field SIG0 pemder \
    --key /mnt/private-key.pem \
    --chain /mnt/ca-chain-cert.pem \
    --cert /mnt/user-cert.pem \
    /mnt/unsigned-document.pdf /mnt/signed-document.pdf
```

A simple default `pyhanko.yaml` file is already included in this docker image but custom configurations can be loaded as well.

### Example for validating

```bash
docker run --rm \
    -v /path/to/local/directory:/mnt \
    pyhanko sign validate \
    --trust /mnt/root-cert.pem \
    /mnt/signed-document.pdf --pretty-print
```
