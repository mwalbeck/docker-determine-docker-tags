FROM python:3.8.12-slim-buster@sha256:e9087bce99087a2eca8cb5cc8278de16d7907aee25c47b33bd5f84d01837dc43

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
