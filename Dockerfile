FROM mrlesmithjr/apache2

MAINTAINER Larry Smith Jr. <mrlesmithjr@gmail.com>

# Copy Ansible Related Files
COPY config/ansible/ /

# Define Wordpress version to install
ENV APACHE2_ENABLE_PHP="true" \
    WORDPRESS_DB="wordpress" \
    WORDPRESS_DB_HOST="db" \
    WORDPRESS_DB_USER="wordpress" \
    WORDPRESS_DB_PASSWORD="wordpress" \
    WORDPRESS_VER="4.5.2" \
    WORDPRESS_ROOT_DIR="/var/www/html"

# Copy Docker Entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
