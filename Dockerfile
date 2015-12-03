FROM buildpack-deps:jessie-curl

ENV LETSENCRYPT_VERSION 0.1.0

RUN curl -SLO "https://github.com/letsencrypt/letsencrypt/archive/v$LETSENCRYPT_VERSION.tar.gz" \
  && tar -xzf "v$LETSENCRYPT_VERSION.tar.gz" \
  && mv letsencrypt-$LETSENCRYPT_VERSION letsencrypt \
  && letsencrypt/letsencrypt-auto --help

VOLUME /etc/letsencrypt
