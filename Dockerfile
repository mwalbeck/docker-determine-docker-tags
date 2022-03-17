FROM python:3.8.13-slim-bullseye@sha256:7e2b945cb5cc4986bc4dac17affb34ca755fb02ba9a360f50fe766f52a880222

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
