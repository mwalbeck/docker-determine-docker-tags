FROM python:3.8.12-slim-buster@sha256:74a858681191f04eee7b4853a68e3acd2fa3224748464c8b169936d67a23c8b9

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
