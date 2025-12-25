FROM nginx:alpine

# Копируем index.html в папку nginx
COPY index.html /usr/share/nginx/html/index.html

# Копируем конфигурацию nginx (опционально)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose порт 80
EXPOSE 80

# Стартуем nginx
CMD ["nginx", "-g", "daemon off;"]
