FROM curlimages/curl:8.15.0@sha256:4026b29997dc7c823b51c164b71e2b51e0fd95cce4601f78202c513d97da2922 as download

# renovate: datasource=git-tags depName=https://git.walbeck.it/walbeck-it/determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION v0.2.6

RUN set -ex; \
    \
    curl -o /home/curl_user/determine-docker-tags.py \
    https://git.walbeck.it/walbeck-it/determine-docker-tags/raw/tag/${DETERMINE_DOCKER_TAGS_VERSION}/determine_docker_tags/__init__.py;

FROM gcr.io/distroless/python3-debian12@sha256:a0ded8676ed10e194cce1b8fdf9171672cda95ad1cabba4ece7b01f4db2e7471

COPY --from=download /home/curl_user/determine-docker-tags.py /

CMD [ "/determine-docker-tags.py" ]
