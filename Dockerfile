FROM python:3.8.11-slim-buster@sha256:78df91c66fb6a59a195eac39e0e56c3346983db72897120fe9f77f4b6da0d34d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
