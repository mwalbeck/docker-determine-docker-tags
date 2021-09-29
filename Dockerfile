FROM python:3.8.12-slim-buster@sha256:b0446297fe7f7d203b4f655ca9ec5fa8644b68fc69d2a0159662befdd400f09a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
