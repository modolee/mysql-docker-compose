# mysql-docker-compose

# 실행 방법

## Docker Compose

### Run
- Attach Mode (포어그라운드에서 동작)
```sh
docker compose up
```

- Detach Mode (백그라운드에서 동작)
```sh
docker compose up --detach
```

### Stop
```sh
docker compose down
```

## Docker

### Build

- 일반
```sh
docker build -t docker-mysql .
```

- Mac M1, M2
```sh
docker build -t docker-mysql . --platform='linux/amd64'
```

### Run

- Attach Mode
```sh
docker run --interactive --name 'docker-mysql' --env-file=.env --volume ${PWD}/docker/conf/utf8.cnf:/etc/mysql/conf.d/utf8.cnf --volume ${PWD}/data:/var/lib/mysql --publish 3306:3306 --restart unless-stopped docker-mysql 
```

- Detach Mode

```sh
docker run --deatch --name 'docker-mysql' --env-file=.env --volume ${PWD}/docker/conf/utf8.cnf:/etc/mysql/conf.d/utf8.cnf --volume ${PWD}/data:/var/lib/mysql --publish 3306:3306 --restart unless-stopped docker-mysql 
```

### Stop
- Attach Mode
```sh
Ctrl + \
```

- Detach Mode
```sh
docker stop docker-mysql
```

### Remove container
```sh
docker rm docker-mysql
```

# 종료 방법
```sh
./stop.sh
```

1. 종료 된 컨테이너와 이미지 제거
2. 1 + 다운로드 받은 모든 이미지 제거
3. 2 + 네트워크, 볼륨, 빌드 캐시 제거