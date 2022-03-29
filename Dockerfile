FROM python:3.8.13-slim-bullseye@sha256:47e8e11587d106a7882c6068e77cae13527eea8dca308d96efa5fe46323e8665

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
