FROM python:3.8.13-slim-bullseye@sha256:a8f05b9f586b0c40d4da32ee90b5df6836e3ed8a89245c2f155e74a6220e3d24

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
