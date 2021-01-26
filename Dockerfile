FROM python:3.8.7-slim-buster@sha256:a2119e91e3c454db804204347bd49b9cd428ef9a76f6e3bad9319ee0ff6e2eff

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.2

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
