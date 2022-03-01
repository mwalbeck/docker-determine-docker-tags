FROM python:3.8.12-slim-bullseye@sha256:52e3aa588e70f116cec90707d8c7269a485834c1b94ce91a7daaa3a803ea1467

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
