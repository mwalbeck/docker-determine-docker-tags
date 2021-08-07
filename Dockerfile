FROM python:3.8.11-slim-buster@sha256:2a41e35b42bf984f05b4c40bd444d0ea3224e6cdd1b7a683ee364521f5501de3

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
