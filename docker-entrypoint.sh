#!/bin/bash

ansible-playbook -i "localhost," -c local /docker-entrypoint.yml \
  --extra-vars "apache2_enable_php=$APACHE2_ENABLE_PHP"

ansible-playbook -i "localhost," -c local /wordpress-entrypoint.yml \
  --extra-vars "wordpress_db=$WORDPRESS_DB wordpress_db_host=$WORDPRESS_DB_HOST \
  wordpress_db_user=$WORDPRESS_DB_USER wordpress_db_password=$WORDPRESS_DB_PASSWORD \
  wordpress_ver=$WORDPRESS_VER wordpress_root_dir=$WORDPRESS_ROOT_DIR"

sleep 5

exec supervisord -n
