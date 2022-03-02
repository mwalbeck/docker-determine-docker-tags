FROM python:3.8.12-slim-bullseye@sha256:107f99d9c2378764b0ddcb0e50b639c761ab5d1a6df2394db9c91ed46785a37f

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
