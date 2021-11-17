FROM python:3.8.12-slim-bullseye@sha256:b3fec6a1fe5de0de43bad896c6fe2fef09a19a3eb2129ff8f0f706187590302a

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
