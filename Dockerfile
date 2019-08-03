# ---- Docker based ----
FROM node:lts-alpine

#Set the timezone to Paris
ENV TZ=Europe/Paris

RUN \
    apk update \
    # install curl
    && apk add bash curl git jq util-linux \
    # cleanup
    && rm /var/cache/apk/* \
    && rm -rf /var/lib/apk/
