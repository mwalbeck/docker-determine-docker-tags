FROM python:3.8.12-slim-bullseye@sha256:142e44559f1f4dbb55aad58b5ee402162c64d25c5e09313ceb09fba7b92958a6

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
