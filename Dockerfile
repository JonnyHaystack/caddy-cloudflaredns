FROM caddy:builder AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM caddy:2.6.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
