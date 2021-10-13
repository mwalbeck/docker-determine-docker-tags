FROM python:3.8.12-slim-buster@sha256:d28320f1d62a360105154a9c2876af8a6d9c8765a429bc9b6b64ed23006210a0

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
