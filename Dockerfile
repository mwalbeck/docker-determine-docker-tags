FROM python:3.8.9-slim-buster@sha256:a4fe93e329580e7ce3561fcbcd7f49c315447c7ce861a131b87ad393e8790106

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
