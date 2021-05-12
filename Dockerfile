FROM python:3.8.10-slim-buster@sha256:b374c2546ff8aaf79ee2a051631b622108e50d0db8398e6cc9075c228bec72bb

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
