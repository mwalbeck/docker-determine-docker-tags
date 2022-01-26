FROM python:3.8.12-slim-bullseye@sha256:423229efd00fafe6c26fac72e12cf6be6a7e2c207dca81b44a100a48ae5e7c79

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
