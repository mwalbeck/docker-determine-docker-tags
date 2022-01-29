FROM python:3.8.12-slim-bullseye@sha256:2d397cf0f7a5f987c1ca8b0f528d6806410ab07d8dc9d8c816124e8aedff97de

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
