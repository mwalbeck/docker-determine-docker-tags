FROM python:3.8.10-slim-buster@sha256:e1f35c3b25b2634eae62f367c3606794d86c2b7d67c3801082d7ae2782fbd139

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
