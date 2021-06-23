FROM python:3.8.10-slim-buster@sha256:ebf9503c7444ffa6a4f7f82b00df78d7982c5ab770c5bfd767230876d692e352

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
