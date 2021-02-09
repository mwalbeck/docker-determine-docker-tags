FROM python:3.8.7-slim-buster@sha256:d15ebfd46327db5614d6622587e3cde8b80eee392563d9edbc57d5b84810d655

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.3

RUN set -ex; \
    \
    pip install determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
