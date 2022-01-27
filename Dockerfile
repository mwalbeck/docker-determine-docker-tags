FROM python:3.8.12-slim-bullseye@sha256:6f44e550c8becd2fa4ea114bbf37f16ff2dc0c123b184214a0a119ffe3a7287d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
