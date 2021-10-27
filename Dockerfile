FROM python:3.8.12-slim-bullseye@sha256:ee30496d13889a37db97a876b9d0d7b8a35dd7ffe9a79a7ef509b40ad7e0e916

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
