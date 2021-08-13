FROM python:3.8.11-slim-buster@sha256:2e3ccafe2607a9bfee9f838727bc2270acb40245acdd7c57d48c49d52ccf84f4

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
