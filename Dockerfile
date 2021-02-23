FROM python:3.8.8-slim-buster@sha256:60d8ae7490dc6be75ad9ed8b504cd8835be12f9a828b2b9fe0e19e4d66b6f636

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
