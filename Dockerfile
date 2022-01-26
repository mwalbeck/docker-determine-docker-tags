FROM python:3.8.12-slim-bullseye@sha256:e43a000dd53142f18d6311debb4ca2224f810c55dc5d390b042ea7483e01701f

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
