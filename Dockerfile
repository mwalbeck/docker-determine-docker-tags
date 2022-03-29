FROM python:3.8.13-slim-bullseye@sha256:8813b8b644f44446a04856707d8f3241c95103d6b7351e3180c843e279a4fed7

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
