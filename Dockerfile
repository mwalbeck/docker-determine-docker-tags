FROM python:3.8.12-slim-bullseye@sha256:3f9f66b1b5e35d1075b055865b662eb0bc78fa0e707d9ea7f24a0e7fbc3e0f31

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
