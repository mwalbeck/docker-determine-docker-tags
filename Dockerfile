FROM curlimages/curl:7.86.0@sha256:cfdeba7f88bb85f6c87f2ec9135115b523a1c24943976a61fbf59c4f2eafd78e as download

# renovate: datasource=git-tags depName=https://git.walbeck.it/walbeck-it/determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION v0.1.10

RUN set -ex; \
    \
    curl -o /home/curl_user/determine-docker-tags.py \
    https://git.walbeck.it/walbeck-it/determine-docker-tags/raw/tag/${DETERMINE_DOCKER_TAGS_VERSION}/determine_docker_tags/__init__.py;

FROM gcr.io/distroless/python3-debian11@sha256:8133a1adb7d857a2a3f33294d9897f237c3bacb1be2ea7b69f2e0cd1e336d8b1

COPY --from=download /home/curl_user/determine-docker-tags.py /

CMD [ "/determine-docker-tags.py" ]
