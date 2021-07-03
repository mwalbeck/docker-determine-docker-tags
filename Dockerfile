FROM python:3.8.11-slim-buster@sha256:9b0d7419e2811710aacee87c40a2c94693e2b6810c3e7e466b8c7fc5bde4cd66

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
