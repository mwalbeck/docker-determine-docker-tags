FROM python:3.8.12-slim-bullseye@sha256:42a81bfcb9d2ed96b799a643f17e254410177866c699b34aeee04264625a2eb3

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
