FROM python:3.8.7-slim-buster@sha256:c98dca2d70689194bdd7d293af74a2c5690175ec6d1a2bcafe67068e35d5973b

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.2

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
