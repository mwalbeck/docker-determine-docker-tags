FROM python:3.8.11-slim-buster@sha256:5140f2e480c8d63490b036113e9e5e0a2f7bf715ba23a0edaa592058523a6de9

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
