FROM python:3.8.12-slim-bullseye@sha256:88af0c5f017e3c846aa88c05877935ed928f5839cedd7b060369b363f3372a7f

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
