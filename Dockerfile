FROM nginx:alpine

# Копируем index.html в папку nginx
COPY index.html /usr/share/nginx/html/index.html

# Копируем конфигурацию nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Expose порт 8080
EXPOSE 8080

# Стартуем nginx
CMD ["nginx", "-g", "daemon off;"]
