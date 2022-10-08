FROM        --platform=$TARGETOS/$TARGETARCH jarredsumner/bun:edge

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"

RUN         bun install \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
