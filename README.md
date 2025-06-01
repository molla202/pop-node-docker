# pop-node-docker
```
git clone https://github.com/molla202/pop-node-docker.git
cd pop-node-docker
```
NOT: docker-compose.yml içerisinde `POP_INVITE_CODE=YOUR_INVITE_CODE_HERE` buraya mailde gelen kodu yazıp kaydedin. ctrl xy enter
```
nano docker-compose.yml
```
NOT: config içeriğini düzenlememiz gerekli

```
nano $HOME/pop-node-docker/pipe/config.json
```
```
cd
cd pop-node-docker
wget https://download.pipe.network/static/pop-v0.3.1-linux-x64.tar.gz
tar -xzf pop-v0.3.1-linux-x64.tar.gz
mv pop ./pipe/pop
```
# İmajı ve containerı başlat
```
docker-compose up -d
```
# Durum kontrolü
```
docker-compose ps
```
# Logları anlık izleme
```
docker-compose logs -f
```
# Health endpoint test etme (otomatik compose'da da yapılır)
```
curl http://localhost/health
```
