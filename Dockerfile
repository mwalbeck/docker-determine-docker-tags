FROM python:3.8.13-slim-bullseye@sha256:cfc3c2d73fc03718f085f98dc8dbf5f1437738fb7fce42ac4b7d1eb27195b6b5

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
