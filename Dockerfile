FROM python:3.8.13-slim-bullseye@sha256:801334528152f130af371091354a17d1e7daee9fe194e6a02d2c3a5bd3b395fe

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
