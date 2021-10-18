FROM python:3.8.12-slim-bullseye@sha256:bb908c726535fc6787a69d4ef3cdb5ee90dc5edeae56da3181b2108539a5eb64

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
