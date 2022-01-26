FROM python:3.8.12-slim-bullseye@sha256:c013fb7ded509d498df099b0618c474945f55ec2e72108a1e789de66787786c8

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
