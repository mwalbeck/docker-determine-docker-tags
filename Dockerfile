FROM python:3.8.7-slim-buster@sha256:d9316f3ee86ec147b76af56052dff45095ffd183e636b4c4f29576eee869927a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.3

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
