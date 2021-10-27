FROM python:3.8.12-slim-bullseye@sha256:79544652ae8640334b037d663be9d2d01a3f8400e09137b3dd891d070223f760

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
