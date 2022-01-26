FROM python:3.8.12-slim-bullseye@sha256:09a9d6f6a8e93603dd7a9ef65f5021c08c89490e4bb133a32bf6f89629a74c17

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
