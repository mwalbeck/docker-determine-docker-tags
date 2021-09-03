FROM python:3.8.12-slim-buster@sha256:f9a21e82f0d6605b662444a3372eecf7dcdd69e36197ebb36385a6edefb1b0d9

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
