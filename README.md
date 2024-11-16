# pymongo-api

## Как запустить

Запускаем mongodb и приложение

```shell
docker compose up -d
```

Заполняем mongodb данными

```shell
./scripts/mongo-init.sh
```

## Как проверить

### Если вы запускаете проект на локальной машине

Откройте в браузере http://localhost:8080

### Если вы запускаете проект на предоставленной виртуальной машине

Узнать белый ip виртуальной машины

```shell
curl --silent http://ifconfig.me
```

Откройте в браузере http://<ip виртуальной машины>:8080

## Доступные эндпоинты

Список доступных эндпоинтов, swagger http://<ip виртуальной машины>:8080/docs

# Примечание

В задании 2 написано, что нужно выводить количество документов на каждом из шардов. В приложении такого функционала не было, я добавил.

# Задание 2

```shell
cd ./mongo-sharding/
docker compose up -d
./scripts/mongo-init.sh
curl http://localhost:8080
docker compose down -v
cd ..
```

# Задание 3
```shell
cd ./mongo-sharding-repl/
docker compose up -d
./scripts/mongo-init.sh
curl http://localhost:8080
docker compose down -v
cd ..
```

# Задание 4
```shell
cd ./sharding-repl-cache/
docker compose up -d
./scripts/mongo-init.sh
curl http://localhost:8080
curl http://localhost:8080/helloDoc/users
docker compose down -v
cd ..
```

# Задания 1,5,6

Файл с решением `task1.drawio` расположен в корне проекта.