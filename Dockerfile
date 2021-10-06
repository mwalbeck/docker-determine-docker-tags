FROM python:3.8.12-slim-buster@sha256:13a3f2bffb4b18ff7eda2763a3b0ba316dd82e548f52ea8b4fd11c94b97afa7d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
