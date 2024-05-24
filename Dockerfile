FROM curlimages/curl:8.6.0@sha256:c3b8bee303c6c6beed656cfc921218c529d65aa61114eb9e27c62047a1271b9b as download

# renovate: datasource=git-tags depName=https://git.walbeck.it/walbeck-it/determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION v0.1.10

RUN set -ex; \
    \
    curl -o /home/curl_user/determine-docker-tags.py \
    https://git.walbeck.it/walbeck-it/determine-docker-tags/raw/tag/${DETERMINE_DOCKER_TAGS_VERSION}/determine_docker_tags/__init__.py;

FROM gcr.io/distroless/python3-debian12@sha256:e8e50bc861b16d916f598d7ec920a8cef1e35e99b668a738fe80c032801ceb78

COPY --from=download /home/curl_user/determine-docker-tags.py /

CMD [ "/determine-docker-tags.py" ]
