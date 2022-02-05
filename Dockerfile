FROM python:3.8.12-slim-bullseye@sha256:09f38a5120cf91cd113e53139b6007ee7b0cdb299be40c0c942e430f1a372d40

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
