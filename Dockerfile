FROM ubuntu:bionic
LABEL MAINTAINER "Bas Kraai <bas@kraai.email>"

RUN apt-get update \
    && apt-get install -y net-tools lsof tzdata hydra curl \
    && rm -rf /var/lib/apt/lists/*

RUN curl -s https://www.tenable.com/downloads/api/v1/public/pages/nessus/downloads/11760/download?i_agree_to_tenable_license_agreement=true -o nessus.deb && dpkg -i nessus.deb 

EXPOSE 8834

CMD ["/opt/nessus/sbin/nessus-service"]
