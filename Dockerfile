FROM python:3.8.12-slim-bullseye@sha256:81c577326a35e5450a10c1699c89ec481b3c843dc2003882feb5d7e00498cf20

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
