FROM python:3.8.12-slim-buster@sha256:fc95fb2a9bedce84e2bed095f59009ce66ec10dca5b1c8bd3a256edf7a8f1818

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
