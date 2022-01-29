FROM python:3.8.12-slim-bullseye@sha256:95240f5291de3193c1299c5b2513f9bb99ecdae0fabd137156b0fb8c47afd6d9

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
