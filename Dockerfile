FROM python:3.8.12-slim-buster@sha256:c8e7597efc7219323c48a2a70656129c6777e45a16c936dc031cf1e8383dfbd6

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
