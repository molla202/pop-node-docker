# pop-node-docker
```
git clone https://github.com/molla202/pop-node-docker.git
cd pop-node-docker
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
