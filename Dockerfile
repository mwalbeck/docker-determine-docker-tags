FROM python:3.8.11-slim-buster@sha256:86680445fd89d6ddae3b8477b21058a112ed90b92bff38f9ecda3bd104aa85b6

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.6

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
