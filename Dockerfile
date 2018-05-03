FROM linuxserver/letsencrypt

RUN apk add \
    php7-pdo_pgsql \
    php7-pgsql \
    php7-ldap \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} && \
    chmod +x /usr/local/bin/composer && \
    nodejs=8.11.1-r2 \
    rm -rf /var/cache/apk/*

WORKDIR /config/www/
