FROM python:3.8.10-slim-buster@sha256:69e5345ea911eb80fc829337860caef31dbef46e3ccce8e1b38006a2387adbf0

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
