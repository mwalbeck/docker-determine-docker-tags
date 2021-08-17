FROM python:3.8.11-slim-buster@sha256:e2c9d30b3c9d4c1b14dde42e3918c1c74d93ae412f4efef1a0b3cebe62c8acd5

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
