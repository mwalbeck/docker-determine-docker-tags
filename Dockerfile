FROM python:3.8.11-slim-buster@sha256:d62d01b3352685cad28013e7f94f6e8c8b4914f1f148e5a22f26545f0259e190

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
