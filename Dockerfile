FROM python:3.8.11-slim-buster@sha256:62ddb6b45a6f5a9aeda6a5fb24da77cfb8fe668eccb0f3b9af8f200c2a017a20

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
