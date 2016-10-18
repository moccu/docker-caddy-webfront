FROM moccu/caddy-base:0.9.3.2

LABEL com.moccu.type="webfront"
USER caddy

CMD ["caddy", "--agree", "--conf", "/etc/caddy/Caddyfile"]
