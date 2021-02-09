FROM python:3.8.7-slim-buster@sha256:ef1eb4df15396b7d660fe99f1a8ad6b54812420e243fc13b22733218fd03b1b1

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.3

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
