FROM python:3.8.13-slim-bullseye@sha256:d82f9b8300f1ab29b3a940b1a2dcf4590db5213ed1053ea49b44898367d38cf3

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
