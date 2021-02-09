FROM python:3.8.7-slim-buster@sha256:b5c2d4ae4eccf260a538311a863987eec892333ad5eb5c595a3af4a530d43f03

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.3

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
