FROM alpine:3.8

ARG PROJECT=
ARG VERSION=
ARG GIT_SHA=

LABEL PROJECT="${PROJECT}"

RUN apk upgrade --no-cache --update && \
    echo "${VERSION} (git-${GIT_SHA})" > /version

COPY src /bin
ENTRYPOINT ["/bin/calico-sync"]
