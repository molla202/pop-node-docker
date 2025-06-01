FROM ubuntu:24.04

RUN apt update && apt upgrade -y && apt install -y \
    curl ca-certificates libssl-dev

# Çalışma dizinini ayarla
WORKDIR /root/pipe

# start.sh ve pop binary host’tan mount edilecek, burada kopyalama yok
# sadece çalışma ortamı hazırlanıyor

# Container başlatıldığında start.sh çalışacak
ENTRYPOINT ["/bin/bash", "/start.sh"]
