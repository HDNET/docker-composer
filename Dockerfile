FROM php:7.2-cli-alpine

ADD install_composer.sh /tmp

WORKDIR /tmp

RUN apk --update add --no-cache bash wget zip && \
    sh install_composer.sh && \
    rm /tmp/install_composer.sh
