FROM  google/cloud-sdk:alpine
MAINTAINER furuyamah <furuyamah@isao.co.jp>

WORKDIR /root/

RUN apk update  \
    && apk upgrade  \
    && gcloud components install kubectl \
    && apk add docker --no-cache

ENTRYPOINT bash
