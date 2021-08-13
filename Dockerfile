FROM python:3.8.11-slim-buster@sha256:6b33fb8500b3e44de2712d6992b98246d701cf7f7b36b9f906eba10afbca06c1

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
