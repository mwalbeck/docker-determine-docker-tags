FROM python:3.8.12-slim-buster@sha256:7e3279e3c70abff51d53d703ae0dad5db6abfa049728c3526a8cc51a8a64473d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
