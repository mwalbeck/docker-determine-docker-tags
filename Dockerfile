FROM python:3.8.12-slim-buster@sha256:7485f65f37bf8bf173f3a725a1b89dc4b6dc6d62b8290c80879f89f0459f86d8

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
