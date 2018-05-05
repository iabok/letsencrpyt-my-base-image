FROM linuxserver/letsencrypt

WORKDIR /

RUN apk --update add \
    php7-pdo_pgsql \
    php7-pgsql \
    php7-ldap \
    nodejs=8.9.3-r1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    chmod +x /usr/local/bin/composer && \
    rm -rf /var/cache/apk/*
