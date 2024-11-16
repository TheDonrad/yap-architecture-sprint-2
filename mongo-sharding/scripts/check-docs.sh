#!/bin/bash

# Проверяем количество документов на всех шардах
docker compose exec -T mongos_router mongosh --port 27020 <<EOF
use somedb
db.helloDoc.countDocuments() 
EOF

# Проверяем количество документов на каждом шарде

docker compose exec -T shard1 mongosh --port 27018 <<EOF
use somedb
db.helloDoc.countDocuments() 
EOF

docker compose exec -T shard2 mongosh --port 27019 <<EOF
use somedb
db.helloDoc.countDocuments() 
EOF