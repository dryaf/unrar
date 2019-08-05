FROM alpine:latest
RUN apk update && apk upgrade && apk add --no-cache unrar
RUN mkdir -p /files
WORKDIR /files

RUN adduser -u 54321 -H -D -s /bin/false -g user user
RUN chown -R user:user /files
USER user

RUN whoami
ENTRYPOINT ["/usr/bin/unrar"]
CMD ["h"]
