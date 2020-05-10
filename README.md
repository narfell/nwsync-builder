# nwsync-manifest-builder

## Usage

```bash
docker run --rm -w /manifests -v $(pwd):/manifests narfell/nwsync-manifest-builder nwsync_write --compression="none" nwsync module.mod
```

## Building

```bash
docker build --rm .
```