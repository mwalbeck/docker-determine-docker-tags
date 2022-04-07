FROM python:3.8.13-slim-bullseye@sha256:744badf30647a491cb5f2db8da2c6ba5fc21afac5813b63f4f498829e96ea8ab

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
