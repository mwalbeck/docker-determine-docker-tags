FROM python:3.8.12-slim-bullseye@sha256:a2d8844be9a3d5df8cd64c11bba476156cbfe5991db643c83e88ae383c15b5d0

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
