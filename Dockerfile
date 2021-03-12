FROM python:3.8.8-slim-buster@sha256:512100a21449f671f9f473ac88b10d6c3db10b97633c450a9c30c24118b40c87

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
