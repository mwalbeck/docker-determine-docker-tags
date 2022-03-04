FROM python:3.8.12-slim-bullseye@sha256:dbf068f66a0ec2990849a28fe1eb1953ce69e86519251a2468178a728839e464

# renovate: datasource=pypi depName=determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION 0.1.10

RUN set -ex; \
    \
    pip install --no-cache-dir determine-docker-tags==$DETERMINE_DOCKER_TAGS_VERSION;

CMD [ "determine-docker-tags" ]
