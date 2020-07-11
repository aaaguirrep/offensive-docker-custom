<!-- markdownlint-disable MD033 MD041 -->

# Docker pentest advanced configurations

<p align="center">
  <a href="https://hub.docker.com/r/aaaguirrep/pentest">
    <img
      alt="Docker for pentest"
      src="img/banner.jpg"
      width="600"
    />
  </a>
</p>
<br/>
<p align="center">
  <a href="https://github.com/aaaguirrep/pentest"><img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/aaaguirrep/pentest"></a>
  <a href="https://github.com/aaaguirrep/pentest"><img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/aaaguirrep/pentest"></a>
  <a href="https://github.com/aaaguirrep/pentest"><img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/aaaguirrep/pentest"></a>
    <a href="https://github.com/aaaguirrep/pentest"><img alt="GitHub issues" src="https://img.shields.io/github/issues/aaaguirrep/pentest"></a>
  <a href="https://hub.docker.com/r/aaaguirrep/pentest"><img alt="Docker Cloud Build Status" src="https://img.shields.io/docker/cloud/build/aaaguirrep/pentest"></a>
  <a href="https://hub.docker.com/r/aaaguirrep/pentest"><img alt="Docker Automated build" src="https://img.shields.io/docker/automated/aaaguirrep/pentest"></a>
    <a href="https://hub.docker.com/r/aaaguirrep/pentest"><img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/aaaguirrep/pentest"></a>
  <a href="https://hub.docker.com/r/aaaguirrep/pentest"><img alt="Docker Image Size (latest by date)" src="https://img.shields.io/docker/image-size/aaaguirrep/pentest"></a>
    <a href="https://hub.docker.com/r/aaaguirrep/pentest"><img alt="Docker Image Version (latest by date)" src="https://img.shields.io/docker/v/aaaguirrep/pentest"></a>
    <a href="https://hub.docker.com/r/aaaguirrep/pentest"><img alt="Docker Stars" src="https://img.shields.io/docker/stars/aaaguirrep/pentest"></a>
  <a href="https://github.com/aaaguirrep/pentest/blob/master/LICENSE"><img alt="GitHub" src="https://img.shields.io/github/license/aaaguirrep/pentest"></a>
</p>

Dockerfile with advanced configurations for docker for pentest.

## Features

- Provide the api keys, tokens, etc, for different pentest tools.

## Tools

- [gitrob](https://github.com/michenriksen/gitrob)
- [gitGraber](https://github.com/hisxo/gitGraber)
- [Amass](https://github.com/OWASP/Amass)
- [findomain](https://github.com/Edu4rdSHL/findomain)
- [subfinder](https://github.com/projectdiscovery/subfinder)
- VPN alias for start VPN's profiles.
- Persistent history file.

## 🛠️ Usage

### Prerequisites

- Docker service installed

Use the docker image by the next option:

### Github repository

    git clone --depth 1 https://github.com/aaaguirrep/docker-pentest-config.git pentest
    cd pentest
    # Copy and paste the tokens or api keys in the dockerfile and build the docker
    docker build -t pentest .
    docker run --rm -it --name my-pentest pentest /bin/zsh

### Considerations to run the container

There are differents use cases for use the image and you should know how to run the container properly.

1. Use the container to access HTB (Hack the Box) machines by HTB vpn.

        docker run --rm -it --cap-add=NET_ADMIN --device=/dev/net/tun --sysctl net.ipv6.conf.all.disable_ipv6=0 --name my-pentest pentest /bin/zsh

2. Share information from your local directory to container directory and save information on your local directory. You should save information under /pentest directory.

        docker run --rm -it -v /path/to/local/directory:/pentest --name my-pentest pentest /bin/zsh

3. Mount directories by umount command.

        docker run --rm -it --privileged --name my-pentest pentest /bin/zsh

## ✅ Environment tested

The image was tested in the following environments:

- Docker service for Mac: Docker version 19.03.5, build 633a0ea

- Docker service for Linux instance on Google Cloud Platform: Docker version 19.03.6, build 369ce74a3c

## Contributing

[Contributing Guide](CONTRIBUTING.md)

## License

[MIT](LICENSE)

Copyright (c) 2020, Arsenio Aguirre
