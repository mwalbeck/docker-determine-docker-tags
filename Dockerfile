FROM python:3.8.12-slim-bullseye@sha256:d20122663d629b8b0848e2bb78d929c01aabab37c920990b37bb32bc47328818

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
