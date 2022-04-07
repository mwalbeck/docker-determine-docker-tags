FROM python:3.8.13-slim-bullseye@sha256:da0aacaf5de0156f1f24eb7499d5a3bea6320ff43617e103ee2591faf717f5fd

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
