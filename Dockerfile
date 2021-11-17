FROM python:3.8.12-slim-bullseye@sha256:03a44c9aa03c67201311c9c891d18d63ed24389c78d3fd2695d04ee32d7d1e79

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
