FROM python:3.8.10-slim-buster@sha256:48af3cc972fc92fcf13e12677ff75e3209d7ccfef17240cdaee77d70d2fe4d2a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
