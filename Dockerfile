FROM python:3.8.11-slim-buster@sha256:4da9f9a46efd4a98747f7c2ecac979096143cd54f32ca4d6d997b51b47cd4c12

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
