FROM python:3.8.11-slim-buster@sha256:9d22601b8069696f462a3045c9c3d0bf37ecad5cfc1ae2fccef294ecc6140f12

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
