# 1. Берем за основу готовый Nginx (версию alpine - она очень легкая)
FROM nginx:alpine

# 2. Копируем НАШ index.html внутрь контейнера, в папку, где Nginx ищет сайты
COPY index.html /usr/share/nginx/html/index.html
