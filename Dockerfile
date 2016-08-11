FROM alpine:3.4

LABEL com.moccu.type="webfront"

RUN mkdir /caddy \
    && addgroup -g 1000 -S caddy \
    && adduser -S -D -G caddy -u 1000 -h /caddy caddy

RUN apk --no-cache add caddy tini

RUN chown -R caddy:caddy /caddy
USER caddy

ENTRYPOINT ["/sbin/tini"]

CMD ["caddy", "--agree", "--conf", "/etc/caddy/Caddyfile"]
