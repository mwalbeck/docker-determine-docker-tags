FROM python:3.8.8-slim-buster@sha256:9c135cab3c5bf54d31965aeb1023555d80c026926b469895adbc769f91b1bc33

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
