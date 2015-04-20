#!/bin/bash
# backup redis and nodebb user files (per exclude file).
# to be added to a daily cron job.

# backup redis
rm -f .mgit/dump.rdb.gz
sudo gzip /var/lib/redis/dump.rdb -c | openssl enc -aes-256-cbc -k "$(cat .mgit/secret)" -out .mgit/dump.rdb.gz || exit 1

# add the new backup file and any new file updates (plugins, uploads, etc.) and push them to github
rm -f .gitignore # remove nodebb's .gitignore file because it will make git ignore our files!
mgit forum add -A
mgit forum commit -m "daily backup"
mgit forum push
