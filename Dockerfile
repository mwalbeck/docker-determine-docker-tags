FROM python:3.8.8-slim-buster@sha256:cf0bfc80cca62ed418ca67dd6a6f0d4d9b9f21d6520745c18ec125d3a5407359

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
