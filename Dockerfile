FROM python:3.8.13-slim-bullseye@sha256:5d905ca6b2a386f56fdc77ddb6b33cd1fd983d07d76617d510afd3696397da6b

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
