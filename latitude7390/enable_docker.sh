systemctl enable docker.service
systemctl start docker.service
chmod a+rw /var/run/docker.sock
docker run -itd --name redis -p 6379:6379 redis
docker run -itd --name mysql8 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 mysql:8.0
