FROM python:3.8.8-slim-buster@sha256:02b354276c32b33ca7c8da703389f14ed864fdcab9fc628b0747f18c3e3274c6

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
