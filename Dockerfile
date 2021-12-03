FROM python:3.8.12-slim-bullseye@sha256:efaf67601bb79636a30b71b05fa08b6a339b1b3d17fddc34d0cbd625df757e73

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
