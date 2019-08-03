# ---- Docker based ----
FROM docker:stable

#Set the timezone to Paris
ENV TZ=Europe/Paris

RUN \
    apk update \
    # install curl
    && apk add bash curl git util-linux nodejs npm \
    # cleanup
    && rm /var/cache/apk/* \
    && rm -rf /var/lib/apk/
