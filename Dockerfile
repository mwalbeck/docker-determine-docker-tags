FROM python:3.8.13-slim-bullseye@sha256:616ecaf64c44c6ccb4919d8d7a9459cbc38f8918d3fdaff43825863db8484b9d

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
