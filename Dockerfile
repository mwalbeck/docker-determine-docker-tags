FROM python:3.8.9-slim-buster@sha256:bdc39f13da35be9a8e592f8f49d12a4552ffd3e90b1fb866f7ab628f3197609d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
