FROM python:3.8.12-slim-bullseye@sha256:8b22591ee49df16c9a6c594fd623e56f9e2f0af42a2277991d903dcfa317bbf0

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
