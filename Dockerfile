FROM python:3.8.8-slim-buster@sha256:3efd67cc8c7c6038201c9715658a0a0ad6e547d5308982245dbb850e32e95004

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
