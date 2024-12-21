#!/bin/bash

# Перейти в директорию shared-types и получить последние изменения
cd shared-functions
git pull origin main

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
    
    # Удалить node_modules/shared-types если существует
    rm -rf node_modules/shared-functions
    
    # Переустановить зависимости
    yarn install --check-files
    
    cd ..
  fi
done

echo "Shared functions updated successfully!"