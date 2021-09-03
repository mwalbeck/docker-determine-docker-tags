FROM python:3.8.12-slim-buster@sha256:69a80ce0900466ee757ec2420417e66e4153efacc49e8a40f8476ecbed684ee7

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
