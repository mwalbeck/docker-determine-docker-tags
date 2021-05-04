FROM python:3.8.9-slim-buster@sha256:209e8a715aa9b061b4e87f368f9c259471334d769f58f1002f16e46d700ecea2

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
