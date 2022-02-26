FROM python:3.8.12-slim-bullseye@sha256:0d65a38bf0b71fe67a64281143d2341de44dad03ca07bf3fafefe464d36caf80

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
