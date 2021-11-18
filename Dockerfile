FROM python:3.8.12-slim-bullseye@sha256:82962a8b98612a742c10d30d1098779336e333a6d5806aea4d1ffa49d506ae44

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
