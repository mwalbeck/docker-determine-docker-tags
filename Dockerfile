FROM python:3.8.12-slim-bullseye@sha256:e533717c4d1047de5ee2c063d21264320fdcb7773e55e8e168440b7bfdcfba50

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
