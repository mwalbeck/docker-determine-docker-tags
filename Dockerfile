FROM python:3.8.13-slim-bullseye@sha256:84713dbb75ab4fb81a4a2233e41c4357cfcb6c2a0cb3b5f295deb5cf5ad50850

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
