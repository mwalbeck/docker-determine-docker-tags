FROM python:3.8.13-slim-bullseye@sha256:33ba6ab5eafedbe7a11e01e5a7c98d91eba8db23480421263314e0272b3fc64b

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
