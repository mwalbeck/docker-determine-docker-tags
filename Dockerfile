FROM python:3.8.12-slim-buster@sha256:7535b1421df0fec008b00c9b3fd88630a7699e5202cb6abb8af91042907d8693

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
