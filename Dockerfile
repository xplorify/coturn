FROM ubuntu:16.04
MAINTAINER Goran Jovanov <goran.jovanov@gmail.com>

VOLUME /conf
VOLUME /cert

ENV MIN_PORT=40000
ENV MAX_PORT=50000

ADD scripts/ /scripts/

RUN /scripts/install.sh

EXPOSE 3478 3478/udp 5349 5349/udp

CMD /scripts/run.sh