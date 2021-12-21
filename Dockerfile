FROM python:3.8.12-slim-bullseye@sha256:c0546247d04be3fda1ff07d29678b3a349b645149bf146f1c5a4ae6ec7d67c0e

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
