FROM python:3.8.10-slim-buster@sha256:d1c831bf056a15d3739f4b9438b678fadea4ffed61193929d1bb35d7c2f8e84d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
