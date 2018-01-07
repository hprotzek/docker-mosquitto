FROM alpine:3.7
MAINTAINER Holger Protzek <h.protzek@icloud.com>

LABEL Description="Eclipse Mosquitto MQTT Broker"

RUN apk --no-cache add mosquitto=1.4.14-r3 jq

VOLUME /data

# Copy data
COPY run.sh /
COPY mosquitto.conf /etc/

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
