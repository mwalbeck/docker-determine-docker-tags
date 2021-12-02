FROM python:3.8.12-slim-bullseye@sha256:aa1be711ec5f9e8b8431dc34a18ea56d555440cf65558fb5237182a1a9dbcee2

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
