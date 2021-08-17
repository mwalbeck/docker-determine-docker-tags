FROM python:3.8.11-slim-buster@sha256:713e6771846e20ded1b97b9b44bfdc19dfada418357a3fb8567611303d181dda

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
