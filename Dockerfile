FROM python:3.8.13-slim-bullseye@sha256:e89c7b0b586da4807c876d57196f7424bcb27ffe80f971ddfe6a65c1ae3a5a3f

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
