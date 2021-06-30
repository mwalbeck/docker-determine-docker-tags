FROM python:3.8.11-slim-buster@sha256:f9dc4b3e96683db3db3c9a8a069a111b1274c337cca5495ef154fcc096e801eb

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
