FROM python:3.8.12-slim-bullseye@sha256:54ba2267be47a6829b5c2b90fe9cac2e1c3763eee28d41d2a1622645d98afd2a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
