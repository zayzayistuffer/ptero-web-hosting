#!/bin/ash

cd /home/container

# Copy defaults if /home/container/apache2/httpd.conf is empty we copy over the default configs
if [ ! -d /home/container/apache2 ]; then
    echo "[Entrypoint] Copying default files..."
    cp -r /usr/local/default_files/apache2 /home/container
fi

if [ ! -d /home/container/php-fpm ]; then
    echo "[Entrypoint] Copying default files..."
    cp -r /usr/local/default_files/php-fpm /home/container
fi

if [ ! -d /home/container/public_html ]; then
    echo "[Entrypoint] Copying default files..."
    cp -r /usr/local/default_files/public_html /home/container
fi

echo "Starting Redis..."
redis-server --daemonize yes

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm83 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Apache..."
exec httpd -f /home/container/apache2/httpd.conf -DFOREGROUND