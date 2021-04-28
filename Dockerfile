FROM python:3.8.9-slim-buster@sha256:2516c4bc037b8144b6104e73e6bdd0c861725d9ed7bd05095dded22842991508

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
