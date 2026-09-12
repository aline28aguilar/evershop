#!/bin/sh

echo "Iniciando EverShop..."

npm run start &

sleep 15

echo "Creando/verificando administrador..."

node ./packages/evershop/dist/bin/user/create.js \
  --name "$ADMIN_NAME" \
  --email "$ADMIN_EMAIL" \
  --password "$ADMIN_PASSWORD"

wait