FROM python:3.8.11-slim-buster@sha256:1ec88780c5587434298be396876aeb63edc798e8443e3a344cf4a893b6d4531c

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
