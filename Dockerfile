FROM python:3.8.12-slim-buster@sha256:37b90ed9ccb161092bb6a8570711e7769b4794e0aa869f8d74fe1159665edccd

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
