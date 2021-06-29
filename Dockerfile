FROM python:3.8.10-slim-buster@sha256:6c0b171f6e4cbd880a972a36b77f18ccb03c3f32a6385e3306e289e9ddbfbcfe

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
