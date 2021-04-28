FROM python:3.8.9-slim-buster@sha256:76d26c7208ffa1e91f5713ef06119a19e3c08a3b54b5c2cc8b98354f17688821

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
