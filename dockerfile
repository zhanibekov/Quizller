# Используем официальный образ PHP с Apache
FROM php:7.4-apache

# Устанавливаем расширения PHP для MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Копируем проект в контейнер
COPY . /var/www/html/

# Устанавливаем права на папки
RUN chown -R www-data:www-data /var/www/html/

# Открываем порт 80 для веб-сервера
EXPOSE 80
