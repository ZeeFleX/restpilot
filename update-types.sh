#!/bin/bash

# Перейти в директорию shared-types и получить последние изменения
cd shared-types
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
  "frontend-admin"
  "frontend-client"
  "frontend-manager"
)

# Обновить зависимости в каждом сервисе
for service in "${services[@]}"; do
  if [ -d "$service" ]; then
    echo "Updating $service..."
    cd $service
    
    # Удалить node_modules/shared-types если существует
    rm -rf node_modules/shared-types
    
    # Переустановить зависимости
    yarn install --check-files
    
    cd ..
  fi
done

echo "Shared types updated successfully!"