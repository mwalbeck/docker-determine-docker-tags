FROM python:3.8.8-slim-buster@sha256:4e1d44b59a13754f23675b41e3b77701889d976eb1292fe9fdfe37281f8bf677

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
