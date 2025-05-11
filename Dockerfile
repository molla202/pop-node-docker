FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && \
    apt install -y wget rar zip libssl-dev ca-certificates curl nano

RUN wget https://download.pipe.network/static/pop-v0.3.0-linux-x64.tar.gz && \
    tar -xzf pop-v0.3.0-linux-x64.tar.gz -C /usr/local/bin && \
    chmod +x /usr/local/bin/pop

RUN mkdir -p /root/pipe/logs

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80 443

CMD ["/start.sh"]
