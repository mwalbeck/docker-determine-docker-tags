FROM python:3.8.8-slim-buster@sha256:c8ef10dab9a6f9dae6d9f98757e395d2fabc4e7da4b5d9c690bd1095339f96be

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
