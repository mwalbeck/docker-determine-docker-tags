FROM python:3.8.12-slim-buster@sha256:7e732593f25983fa7d4b2d54444be4a785f2397c1cf2f815d2e3638337eee012

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
