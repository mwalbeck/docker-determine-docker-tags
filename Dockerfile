FROM python:3.8.8-slim-buster@sha256:1389669225e7fa05a9bac20d64551b6b6d84ee3200330d8d8de74c6d2314fdc7

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
