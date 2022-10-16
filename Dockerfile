FROM curlimages/curl:7.84.0@sha256:5a2a25d96aa941ea2fc47acc50122f7c3d007399a075df61a82d6d2c3a567a2b as download

# renovate: datasource=git-tags depName=https://git.walbeck.it/walbeck-it/determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION v0.1.10

RUN set -ex; \
    \
    curl -o /home/curl_user/determine-docker-tags.py \
    https://git.walbeck.it/walbeck-it/determine-docker-tags/raw/tag/${DETERMINE_DOCKER_TAGS_VERSION}/determine_docker_tags/__init__.py;

FROM gcr.io/distroless/python3-debian11@sha256:66747fe9bab149b6c7e486b8a03fac323cf966cfc6c7f9c8fd9eb166d7698b6a

COPY --from=download /home/curl_user/determine-docker-tags.py /

CMD [ "/determine-docker-tags.py" ]
