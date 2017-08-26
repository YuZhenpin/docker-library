FROM alpine

RUN apk update && apk add --no-cache py-pip && \
    pip install pip j2cli --upgrade 

ENTRYPOINT ["j2"]
CMD ["--help"]
