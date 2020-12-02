# Nessus appliance container
This appliance is based on the post of [InfosecMatter](https://www.infosecmatter.com/install-nessus-in-docker/).

## Ports
This containers exposes the following ports:

| Port | usage |
| :---: | --- |
| 8834 | HTTPS web panel |

## Usage
You can use this image with docker run and docker-compose.
Below are examples for both.

### Docker run
The most basic docker run config is:
```
docker run --name "nessus" -p 8834:8834 baskraai/nessus
```

## Extend image
```
FROM baskraai/nessus:stable
RUN apt-get update \
    && apt-get install -y <packages> \
    && rm -rf /var/lib/apt/lists/
```

With this Dockerfile the rest of the container keeps working as expected.

### Todo
- Enable auto-build with release check.
- Stop hardcoding the version of the release
