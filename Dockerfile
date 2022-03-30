FROM python:3.8.13-slim-bullseye@sha256:d560b10359a128fcc387c1453ae9656e1a18630da240bcbd14e3dc9f47b553c7

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
