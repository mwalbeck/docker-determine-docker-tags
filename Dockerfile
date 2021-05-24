FROM python:3.8.10-slim-buster@sha256:24645cf505eafc29ed80019e83ae92ef1b1bd45b910f1379f1e2704c84521510

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
