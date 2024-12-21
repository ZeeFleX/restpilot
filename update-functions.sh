#!/bin/bash

# Перейти в директорию shared-functions и собрать проект
cd shared-functions
yarn install
yarn build

# Перейти обратно в корневую директорию
cd ..

# Список всех сервисов
services=(
  "auth-microservice"
  "companies-microservice"
  "coordinator-microservice"
  "menu-microservice"
  "orders-microservice"
  "graphql-microservice"
)

# Обновить зависимости в каждом сервисе
for service in "${services[@]}"; do
  if [ -d "$service" ]; then
    echo "Updating $service..."
    cd $service
    
    # Удалить node_modules/shared-functions если существует
    rm -rf node_modules/shared-functions
    
    # Переустановить зависимости
    yarn install --check-files
    
    cd ..
  fi
done

echo "Shared functions updated successfully!"