FROM python:3.8.12-slim-bullseye@sha256:8afa192bca1c38a68f3c61a3ea93848c474c6a25f09da6908bd813558c05cc46

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
