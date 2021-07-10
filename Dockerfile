FROM python:3.8.11-slim-buster@sha256:bd12f13a9b40f7fbb037bb98f09bda8cbc8e214035b49913e841a5369a50fff4

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
