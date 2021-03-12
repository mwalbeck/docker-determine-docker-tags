FROM python:3.8.8-slim-buster@sha256:3d5cae991c8f12c831e98d74c4dd750cfb1b219859069098627be096574c02de

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
