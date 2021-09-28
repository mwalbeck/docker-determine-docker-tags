FROM python:3.8.12-slim-buster@sha256:74b8e5aad771e00737707515c82a0960f30c2f356b85a03a0d2a1d08b9d7c083

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
