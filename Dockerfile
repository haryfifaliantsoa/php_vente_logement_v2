# Utiliser une image PHP officielle avec Apache
FROM php:8.1-apache

# Copier le code source de l'application dans le conteneur
COPY . /var/www/html/

# Installer les dépendances nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

# Exposer le port 80
EXPOSE 80

# Lancer Apache en mode foreground
CMD ["apache2-foreground"]
