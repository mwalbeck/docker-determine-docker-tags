FROM python:3.8.12-slim-buster@sha256:df36bd16a5c9092d05f7d978017da53fa4cd48699200ac6a6d6da34cb7f2e45a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
