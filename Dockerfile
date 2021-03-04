FROM golang

WORKDIR /tmp/build

# copy licenses
RUN mkdir /licenses
COPY LICENSE /licenses
COPY licenses/* /licenses/

COPY ./ .
COPY ./ /usr/local/go/src/eirinix-annotate/
RUN go build && \
ls
ENTRYPOINT ["/tmp/build/eirinix-annotate"]
