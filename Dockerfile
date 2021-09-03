FROM python:3.8.12-slim-buster@sha256:d4c9ab98ac4de0ae1c0eec51b4a57d01f5ffbc61f22534db07e45d111afb6f5a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
