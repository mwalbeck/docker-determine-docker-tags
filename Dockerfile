FROM python:3.8.10-slim-buster@sha256:db0e34b99070b62236a44aa30331c1bdd40767605c59a7fe26f8fe59edd01776

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
