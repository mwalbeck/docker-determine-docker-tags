FROM python:3.8.12-slim-bullseye@sha256:dc51d024b66a7b793ba408f0e8c08d90b316804df6ed1a31921c74648a324155

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
