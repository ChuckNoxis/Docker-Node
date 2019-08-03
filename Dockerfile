# ---- Node Alpine based ----
FROM node:lts-alpine

#Set the timezone to Paris
ENV TZ=Europe/Paris

RUN \
    apk update \
    # install bash git jq util-linux
    && apk add bash curl git jq util-linux \
    # cleanup
    && rm /var/cache/apk/* \
    && rm -rf /var/lib/apk/
