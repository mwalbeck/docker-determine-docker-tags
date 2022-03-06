FROM python:3.8.12-slim-bullseye@sha256:52cf2c3000dd8fd16f7d5ec8f423dc24396a10281d619c24924af0614ddaba88

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
