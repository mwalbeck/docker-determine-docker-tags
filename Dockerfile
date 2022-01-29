FROM python:3.8.12-slim-bullseye@sha256:bd3db47f922d1cab1cdacfb4796bac4ed5cea01428e7a9b2828869fd4626de8f

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
