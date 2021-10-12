FROM python:3.8.12-slim-buster@sha256:cfcde8c5c619b9833d0360d367896d69a1e3c8c8a3b13c90792cc53e069d389a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
