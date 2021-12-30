FROM ubuntu-base:20.04

WORKDIR /root

ADD lantern-installer-64-bit.deb /root
ADD settings.yaml /root

RUN dpkg -i lantern-installer-64-bit.deb && \
    rm -rf lantern-installer-64-bit.deb && \
    mkdir /root/.lantern && \
    mv settings.yaml /root/.lantern/settings.yaml

EXPOSE 8010/tcp 8020/tcp 8080/tcp

ENTRYPOINT ["/usr/bin/lantern", "--configdir=/root/.lantern", "--headless=true"]
