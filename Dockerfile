FROM python:3.8.12-slim-buster@sha256:b04d34fb3538fdf2b5d71ddf2a65608c872418f49391f1da3be635fe2175c66c

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
