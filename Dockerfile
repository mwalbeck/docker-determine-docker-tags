FROM curlimages/curl:8.7.1@sha256:25d29daeb9b14b89e2fa8cc17c70e4b188bca1466086907c2d9a4b56b59d8e21 as download

# renovate: datasource=git-tags depName=https://git.walbeck.it/walbeck-it/determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION v0.1.10

RUN set -ex; \
    \
    curl -o /home/curl_user/determine-docker-tags.py \
    https://git.walbeck.it/walbeck-it/determine-docker-tags/raw/tag/${DETERMINE_DOCKER_TAGS_VERSION}/determine_docker_tags/__init__.py;

FROM gcr.io/distroless/python3-debian11@sha256:db34936540e7bc575cc24a318e41eae7ad8c426b8d8e20a465f0dd67843590eb

COPY --from=download /home/curl_user/determine-docker-tags.py /

CMD [ "/determine-docker-tags.py" ]
