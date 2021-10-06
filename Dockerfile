FROM python:3.8.12-slim-buster@sha256:807b57dd051ebe5980f8f7d18211c058b72ab676d36eb0569c1876c2365d344b

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
