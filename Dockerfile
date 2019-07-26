FROM quay.io/kontena/mortar:latest

ARG KUBECTL_VERSION=v1.15.0

RUN apk --update add curl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$KUBECTL_VERSION/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT [ "/usr/local/bundle/bin/mortar" ]
