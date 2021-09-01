FROM python:3.8.12-slim-buster@sha256:5e275a12c3288c60879f691cf725546bd44bc8bb6593048a2fdf011fff2e20ca

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
