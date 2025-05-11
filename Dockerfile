FROM ubuntu:24.04

RUN apt update && apt upgrade -y && apt install -y wget ca-certificates curl libssl-dev && \
    wget https://download.pipe.network/static/pop-v0.3.0-linux-x64.tar.gz && \
    tar -xzf pop-v0.3.0-linux-*.tar.gz -C /usr/local/bin && \
    chmod +x /usr/local/bin/pop && \
    rm pop-v0.3.0-linux-*.tar.gz

WORKDIR /root/pipe

COPY pipe/config.json /root/pipe/config.json
COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
