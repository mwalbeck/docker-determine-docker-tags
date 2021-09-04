FROM python:3.8.12-slim-buster@sha256:e48abcf3b4e027a97d570a3884f1e33de16b6cbc30b3600e518a52251e82499a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
