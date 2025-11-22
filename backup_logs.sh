#!/bin/bash

# 1. Создаем папку (используем $HOME вместо ~ для надежности)
mkdir -p $HOME/backups

# 2. Дата
DATE=$(date +%Y-%m-%d_%H-%M)

# 3. Архивируем.
# ВНИМАНИЕ: путь /var/log/nginx (через слэши)
sudo tar -czf $HOME/backups/nginx_logs_$DATE.tar.gz /var/log/nginx

echo "Бэкап готов!"
