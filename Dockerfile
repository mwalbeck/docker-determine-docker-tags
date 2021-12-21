FROM python:3.8.12-slim-bullseye@sha256:11f19d1501921ca8537312961c1982b79ee7e19868e2733ad21c140c35e71dac

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
