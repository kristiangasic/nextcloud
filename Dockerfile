# Verwende das offizielle Nextcloud-Image
FROM nextcloud:latest

# Installiere zusätzliche PHP-Erweiterungen (falls benötigt)
RUN apt-get update && apt-get install -y \
    libmagickcore-dev \
    libmagickwand-dev \
    && docker-php-ext-install opcache

# Bereite Konfigurationsdateien vor (falls Anpassungen benötigt werden)
COPY php.ini /usr/local/etc/php/conf.d/

# Setze die korrekten Berechtigungen (falls erforderlich)
RUN chown -R www-data:www-data /var/www/html
