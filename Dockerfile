FROM python:3.8.12-slim-bullseye@sha256:c5c49edb93bcf487e81c01fd13aba850c996649927d7c42d7367fab05d2d3e7f

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
