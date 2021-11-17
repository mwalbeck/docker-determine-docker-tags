FROM python:3.8.12-slim-bullseye@sha256:7e1d620b58c0343b97e93e66d136b929dc20f7afbc642671a31c93ed3bcb4b86

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
