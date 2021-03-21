# docker-determine-docker-tags

[![Build Status](https://build.walbeck.it/api/badges/walbeck-it/docker-determine-docker-tags/status.svg)](https://build.walbeck.it/walbeck-it/docker-determine-docker-tags)
![Docker Pulls](https://img.shields.io/docker/pulls/mwalbeck/determine-docker-tags)

This is a docker image for determine-docker-tags. determine-docker-tags is a small python program to generate docker tags based on parameters from a Dockerfile. The program is mainly intended for use in Drone CI to generate a .tags file for the docker plugin.

The program is configured entirely with environment variables for easy configuration. For a overview over the configuration options and what they do I'll referrer you to the [determine-docker-tags repo](https://git.walbeck.it/walbeck-it/determine-docker-tags). If you would like a practical example of how to use it, you can check out the `.drone.yml` file in this repo, where you will find an example of how to use the image in the first step of the `build and release` pipelines.

There are two variants of this image. One using the offical debian based python image and one using the distroless python variant. The relevant tags are as follows (x is a placeholder for the current patch version):

* 0.1, 0.1.x, latest
* 0.1-distroless, 0.1.x-distroless

## License

GPLv3 or later.
