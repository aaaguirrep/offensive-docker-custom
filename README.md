<!-- markdownlint-disable MD033 MD001 MD041-->

<h2>Offensive Docker custom configurations</h2>

<p align="center">
  <a href="https://github.com/aaaguirrep/offensive-docker">
    <img
      alt="Offensive Docker"
      src="https://github.com/aaaguirrep/offensive-docker/blob/master/img/banner.jpg"
      width="600"
    />
  </a>
</p>
<br/>
<p align="center">
  <a href="https://github.com/aaaguirrep/offensive-docker"><img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/aaaguirrep/offensive-docker"></a>
  <a href="https://github.com/aaaguirrep/offensive-docker"><img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/aaaguirrep/offensive-docker"></a>
  <a href="https://github.com/aaaguirrep/offensive-docker"><img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/aaaguirrep/offensive-docker"></a>
    <a href="https://github.com/aaaguirrep/offensive-docker"><img alt="GitHub issues" src="https://img.shields.io/github/issues/aaaguirrep/offensive-docker"></a>
  <a href="https://hub.docker.com/r/aaaguirrep/offensive-docker"><img alt="Docker Cloud Build Status" src="https://img.shields.io/docker/cloud/build/aaaguirrep/offensive-docker"></a>
  <a href="https://hub.docker.com/r/aaaguirrep/offensive-docker"><img alt="Docker Automated build" src="https://img.shields.io/docker/automated/aaaguirrep/offensive-docker"></a>
    <a href="https://hub.docker.com/r/aaaguirrep/offensive-docker"><img alt="Docker Pulls" src="https://img.shields.io/docker/pulls/aaaguirrep/offensive-docker"></a>
  <a href="https://hub.docker.com/r/aaaguirrep/offensive-docker"><img alt="Docker Image Size (latest by date)" src="https://img.shields.io/docker/image-size/aaaguirrep/offensive-docker"></a>
    <a href="https://hub.docker.com/r/aaaguirrep/offensive-docker"><img alt="Docker Image Version (latest by date)" src="https://img.shields.io/docker/v/aaaguirrep/offensive-docker"></a>
    <a href="https://hub.docker.com/r/aaaguirrep/offensive-docker"><img alt="Docker Stars" src="https://img.shields.io/docker/stars/aaaguirrep/offensive-docker"></a>
  <a href="https://github.com/aaaguirrep/offensive-docker/blob/master/LICENSE"><img alt="GitHub" src="https://img.shields.io/github/license/aaaguirrep/offensive-docker"></a>
</p>

Dockerfile with advanced configurations for Offensive Docker.

### Table of contents

- [Features](#features)
- [Tools](#tools)
- [:hammer_and_wrench: Usage](#hammer_and_wrench-usage)
  - [Prerequisites](#prerequisites)
  - [Github repository](#github-repository)
  - [Considerations to run the container](#considerations-to-run-the-container)
- [:white_check_mark: Environment tested](#white_check_mark-environment-tested)
- [:coffee: Donations](#coffee-donations)
- [Contributing](#contributing)
- [License](#license)

## Features

- Provide the api keys, tokens, etc, for different offensive tools.

## Tools

- [gitrob](https://github.com/michenriksen/gitrob)
- [gitGraber](https://github.com/hisxo/gitGraber)
- [Amass](https://github.com/OWASP/Amass)
- [findomain](https://github.com/Edu4rdSHL/findomain)
- [subfinder](https://github.com/projectdiscovery/subfinder)
- VPN alias for start VPN's profiles.
- Persistent history file.

## :hammer_and_wrench: Usage

### Prerequisites

- Docker service installed

Use the docker image by the next option:

### Github repository

    git clone --depth 1 https://github.com/aaaguirrep/offensive-docker-custom.git offensive-docker
    cd offensive-docker
    # Copy and paste the tokens or api keys in the dockerfile and build the docker
    docker build -t offensive-docker .
    docker run --rm -it --name my-offensive-docker offensive-docker /bin/zsh

### Considerations to run the container

There are differents use cases for use the image and you should know how to run the container properly.

1. Use the container to access HTB (Hack the Box) machines by HTB vpn.

        docker run --rm -it --cap-add=NET_ADMIN --device=/dev/net/tun --sysctl net.ipv6.conf.all.disable_ipv6=0 --name my-offensive-docker offensive-docker /bin/zsh

2. Share information from your local directory to container directory and save information on your local directory. You should save information under /offensive directory.

        docker run --rm -it -v /path/to/local/directory:/offensive --name my-offensive-docker offensive-docker /bin/zsh

3. Mount directories by umount command.

        docker run --rm -it --privileged --name my-offensive-docker offensive-docker /bin/zsh

## :white_check_mark: Environment tested

The image was tested in the following environments:

- Docker service for Mac: Docker version 19.03.5, build 633a0ea

- Docker service for Linux instance on Google Cloud Platform: Docker version 19.03.6, build 369ce74a3c

- Docker service for Linux droplet on Digital Ocean: Docker version 19.03.6, build 369ce74a3c

## :coffee: Donations

Thanks for your donations, are always appreciated.

While I drink the coffee I check more tools to add in the docker image.

[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/aaaguirrep)

## Contributing

[Contributing Guide](CONTRIBUTING.md)

## License

[MIT](LICENSE)

Copyright (c) 2020, Arsenio Aguirre
