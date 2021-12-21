FROM python:3.8.12-slim-bullseye@sha256:229fb47202b13ec392058e3ae0b0d555ded391a5358862cef35f7f16f0973a5b

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
