FROM python:3.8.12-slim-buster@sha256:8e04987ebe19f6ec73575287f0caf836da0d3c14a8a68392352236af8b98b3fb

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
