FROM golang

ENV PRODUCT_ID=9a3fa5d635104f408501037fe711170b
ENV PRODUCT_METRIC=VIRTUAL_PROCESSOR_CORE
ENV PRODUCT_NAME="IBM Cloud Foundry Migration Runtime"
ENV PRODUCT_VERSION="1.0"
ENV PRODUCT_CHARGED_CONTAINERS=ALL

WORKDIR /tmp/build

COPY ./ .
COPY ./ /usr/local/go/src/eirinix-annotate/
RUN go build && \
ls
ENTRYPOINT ["/tmp/build/eirinix-annotate"]
