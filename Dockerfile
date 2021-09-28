FROM python:3.8.12-slim-buster@sha256:182c345039e742a858b9422efaa14f60615bea82e7dc041b57f15e1ebbbd62b2

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
