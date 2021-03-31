FROM python:3.8.8-slim-buster@sha256:436365b184f296c2ac2d6bcf3317985a3bb3b63cd6f901295805cbb20a22d08a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
