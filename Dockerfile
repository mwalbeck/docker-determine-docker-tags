FROM python:3.8.13-slim-bullseye@sha256:09919e06ecceca5cca99ab3622758b11f52abe7dcfc9bdb945d6bfe7482a0e82

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
