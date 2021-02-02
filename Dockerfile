FROM python:3.8.7-slim-buster@sha256:e5000e56eabd767f1a3f01df80fa568d6ecd16cd5110a78ae5d03b7f97a9e00c

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.3

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
