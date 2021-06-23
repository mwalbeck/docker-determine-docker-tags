FROM python:3.8.10-slim-buster@sha256:e25b6fd4f114389ac1475f9a38d33bbeafcaca3a006f1be02759b7033fb6d2d5

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
