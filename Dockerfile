FROM python:3.8.12-slim-bullseye@sha256:6dd5a5ccc8f8144fd62005a1092c16d5fdf4f85b7d4e54a1bbfa2128633f004d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
