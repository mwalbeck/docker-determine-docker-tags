FROM python:3.8.8-slim-buster@sha256:b72c78a7d9749eba9027d63a20cc9a8dcda5badece3d4f7ef9e67a3f075190fd

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
