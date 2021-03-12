FROM python:3.8.8-slim-buster@sha256:a722b8a044a9128d3c503ecf13f5d45f03fdcf05e29e84fbfceee15f2141009f

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.5

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
