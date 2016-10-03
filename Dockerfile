FROM moccu/caddy-base:0.9.3.0

LABEL com.moccu.type="webfront"

RUN apk add --update libcap && setcap cap_net_bind_service=+ep /usr/bin/caddy

USER caddy

CMD ["caddy", "--agree", "--conf", "/etc/caddy/Caddyfile"]
