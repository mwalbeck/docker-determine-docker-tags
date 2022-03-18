FROM python:3.8.13-slim-bullseye@sha256:54b32955aea898160592672d7c324f2fb06c1f643059c4dc107d9f0679979f5b

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
