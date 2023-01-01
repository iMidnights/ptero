# FROM        --platform=$TARGETOS/$TARGETARCH alpine:latest

# LABEL       author="Chris Greene" maintainer="plain@sharkybot.xyz"

# RUN         apk --update --no-cache add ca-certificates nginx
# RUN         apk add php8.1 php8.1-fpm php8.1-mcrypt php8.1-soap php8.1-openssl php8.1-gmp php8.1-pdo_odbc php8.1-json php8.1-dom php8.1-pdo php8.1-zip php8.1-mysqli php8.1-sqlite3 php8.1-apcu php8.1-pdo_pgsql php8.1-bcmath php8.1-gd php8.1-odbc php8.1-pdo_mysql php8.1-pdo_sqlite php8.1-gettext php8.1-xmlreader php8.1-xmlrpc php8.1-bz2 php8.1-iconv php8.1-pdo_dblib php8.1-curl php8.1-ctype php8.1-phar php8.1-fileinfo php8.1-mbstring php8.1-tokenizer

# USER        container
# ENV         USER=container HOME=/home/container
# WORKDIR     /home/container

# COPY        ./../entrypoint.sh /entrypoint.sh
# CMD         [ "/bin/bash", "/entrypoint.sh" ]

FROM alpine:latest

RUN apk --update --no-cache add ca-certificates nginx
RUN apk add php8.1
RUN apk add php8.1-fpm
RUN apk add php8.1-mcrypt
RUN apk add php8.1-soap
RUN apk add php8.1-openssl php8.1-gmp php8.1-pdo_odbc php8.1-json php8.1-dom php8.1-pdo php8.1-zip
RUN apk add php8.1-mysqli php8.1-sqlite3 php8.1-apcu php8.1-pdo_pgsql php8.1-bcmath php8.1-gd
RUN apk add php8.1-odbc php8.1-pdo_mysql php8.1-pdo_sqlite php8.1-gettext php8.1-xmlreader php8.1-xmlrpc php8.1-bz2
RUN apk add php8.1-iconv php8.1-pdo_dblib php8.1-curl php8.1-ctype php8.1-phar php8.1-fileinfo php8.1-mbstring php8.1-tokenizer

USER container
ENV  USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]