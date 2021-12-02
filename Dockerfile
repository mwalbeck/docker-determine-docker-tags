FROM python:3.8.12-slim-bullseye@sha256:4317c297525a96290532b4feb0639eff80066c02ed713d7581e462e3b7dda4d0

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
