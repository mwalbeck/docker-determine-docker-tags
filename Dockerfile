FROM python:3.8.12-slim-bullseye@sha256:08edff106b552a2d9bac5ad95db6a985598e29852b9efbc6c840db27fefc31ae

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
