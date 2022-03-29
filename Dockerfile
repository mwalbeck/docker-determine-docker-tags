FROM python:3.8.13-slim-bullseye@sha256:2b4ed5a458f7f7b89dd03bc26274ee9301d13ebabb68a79ac0b45a2cca7911fa

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
