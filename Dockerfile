FROM python:3.8.8-slim-buster@sha256:32008a4dab000bfd600dad18c3d9e8cb05846eff0031aec67062f067780b52c9

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
