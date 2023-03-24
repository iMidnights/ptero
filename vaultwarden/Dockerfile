FROM        --platform=$TARGETOS/$TARGETARCH vaultwarden/server:latest

LABEL       author="iMidnight" maintainer="mohaidarus@gmail.com"

RUN         apt update \
			useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
