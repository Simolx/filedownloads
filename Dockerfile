FROM ubuntu:16.04
MAINTAINER lx, simolx@yahoo.com

RUN apt update && \
    apt upgrade -y && \
    apt install -y wget && \
    apt clean all && \
    rm -rf /var/lib/apt/lists && \
    mkdir /opt/Downloads
COPY links.txt /opt/Downloads/links.txt
WORKDIR /opt/Downloads
RUN wget -c -i links.txt
CMD [ "bash" ]
