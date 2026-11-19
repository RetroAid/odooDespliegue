#!/bin/sh
cat > /tmp/odoo.conf <<CONF
[options]
addons_path = /mnt/extra-addons
data_dir = /tmp/odoo
db_host = ${DB_HOST}
db_port = 5432
db_user = ${DB_USER}
db_password = ${DB_PASSWORD}
db_name = ${DB_NAME}
db_sslmode = require
dbfilter = ^${DB_NAME}$
list_db = False
admin_passwd = ${ADMIN_PASSWD}
http_port = ${PORT:-8069}
http_interface = 0.0.0.0
proxy_mode = True
workers = 0
max_cron_threads = 1
db_maxconn = 16
CONF
exec odoo -c /tmp/odoo.conf
