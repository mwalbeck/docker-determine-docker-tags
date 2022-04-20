FROM curlimages/curl:7.82.0@sha256:c1c1cda72ab8c306390fc05518bf4d42148564978326d078f65d546858d139cb as download

# renovate: datasource=git-tags depName=https://git.walbeck.it/walbeck-it/determine-docker-tags versioning=semver
ENV DETERMINE_DOCKER_TAGS_VERSION v0.1.10

RUN set -ex; \
    \
    curl -o /home/curl_user/determine-docker-tags.py \
    https://git.walbeck.it/walbeck-it/determine-docker-tags/raw/tag/${DETERMINE_DOCKER_TAGS_VERSION}/determine_docker_tags/__init__.py;

FROM gcr.io/distroless/python3-debian11@sha256:d80afe14915f8cf7c663d09a687592ba606e82ed1fe419489485df1dc6fddacc

COPY --from=download /home/curl_user/determine-docker-tags.py /

CMD [ "/determine-docker-tags.py" ]
