FROM python:3.8.7-slim-buster@sha256:520525c413176216f38aa55dee5aff761a084ca779f5e30c49dfd4854a857141

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.2

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
