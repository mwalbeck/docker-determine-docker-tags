FROM python:3.8.12-slim-buster@sha256:c6f38ecbe14cd9cf93b6cf5755dfff6e908949c766b222c20e6539b072069a92

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
