FROM python:3.8.13-slim-bullseye@sha256:8683d29c9868ae2c8fb89040b2b3ccd08695261e6088d343c864a7f12e955ea5

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
