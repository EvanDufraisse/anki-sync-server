# Based on https://github.com/ankitects/anki/blob/main/docs/syncserver/Dockerfile.distroless
FROM rust:1.82.0 AS builder

ARG ANKI_VERSION

RUN apt-get update && apt-get install -y build-essential protobuf-compiler && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN cargo install --git https://github.com/ankitects/anki.git \
    --tag ${ANKI_VERSION} \
    --root /anki-server  \
    anki-sync-server

FROM gcr.io/distroless/cc-debian12

COPY --from=builder /anki-server/bin/anki-sync-server /usr/bin/anki-sync-server

EXPOSE 8080

CMD ["anki-sync-server"]

# This health check will work for Anki versions 24.08.x and newer.
# For older versions, it may incorrectly report an unhealthy status, which should not be the case.
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD ["anki-sync-server", "--healthcheck"]
