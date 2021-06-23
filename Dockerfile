FROM python:3.8.10-slim-buster@sha256:c24b86f8fdd2051b918de0cb427674f9f4645260257dcf3afa3771e471b43f8b

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
