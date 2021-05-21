# bunq2ynab-docker

Creates a docker image containing https://github.com/wesselt/bunq2ynab

## Preparations

1. Make sure you mount your config.json to /bunq2ynab/config.json
2. Enable UPNP on your router
3. Use host networking

## Usage

### Docker

Starting auto sync

`docker run --rm -d --network host --name hszer0\bunq2ynab:2021-02-06 -v path-to-config:/bunq2ynab/config.json`

Starting manual sync

`docker run --rm -d --network host --name hszer0\bunq2ynab:2021-02-06 -v path-to-config:/bunq2ynab/config.json python bunq2ynab.py`

### Docker-compose

```
version: '3.5'

services:
  bunq2ynab:
    image: hszer0/bunq2ynab:2021-02-06
    network_mode: "host"
    volumes:
      - ./config.json:/bunq2ynab/config.json
```

### Docker on Synology

1. Make sure you mount your config.json in volumes when launching the container (Advanced Settings > Volume)
2. Check "Use the same network as Docker Host" (Advanced Settings -> Network)
3. When running a manual sync like `bunq2ynab.py --all`, enter the following in the Command input: `python bunq2ynab.py --all` (Advanced Settings -> Environment)
