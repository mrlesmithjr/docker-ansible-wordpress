Repo Info
=========
Build [Docker] image for [Wordpress]..

Consuming
---------
```
docker run -d --name db -e MYSQL_ROOT_PASSWORD=wordpress \
  -e MYSQL_DATABASE=wordpress -e MYSQL_USER=wordpress \
  -e MYSQL_PASSWORD=wordpress mrlesmithjr/mysql
```
```
docker run -d --name wordpress -e APACHE2_ENABLE_PHP="true" \
  -e WORDPRESS_VER="4.6.1" \
  -e WORDPRESS_ROOT_DIR="/var/www/html" \
  -e WORDPRESS_DB="wordpress" \
  -e WORDPRESS_DB_HOST="db" \
  -e WORDPRESS_DB_USER="wordpress" \
  -e WORDPRESS_DB_PASSWORD="wordpress" \
  -p 80:80 -p 443:443 --link db:db \
  mrlesmithjr/wordpress
```
Spin up using `docker-compose`:
```
docker-compose up -d
```

Usage
-----
http://IPorHostname

Now finish up setting up your Wordpress site..

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
