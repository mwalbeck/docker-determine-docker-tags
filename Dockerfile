FROM python:3.8.12-slim-bullseye@sha256:028a49bccd90814e89a7fd1f401f165b44e3a331d0c927ce270f7e5acedc74bf

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
