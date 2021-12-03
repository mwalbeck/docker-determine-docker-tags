FROM python:3.8.12-slim-bullseye@sha256:0f6d6953c6612786ed05aaf1de7151dbbb0cea6bc83687040d5f15377be7ef64

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
