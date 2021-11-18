FROM python:3.8.12-slim-bullseye@sha256:87cdfdbf66e79dfb1d33aca671f9bee623e3710b1f6e0b8476c98c669d69deec

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
