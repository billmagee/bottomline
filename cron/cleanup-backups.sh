#!/bin/bash
#
# Remove all scheduled db backups that are more than 5 days old
#

DIR="$PWD/../sites/backup/backup_migrate/scheduled"

find $DIR -mmin +$((60*24*5)) \( -name '*.gz' -o -name '*.gz.info' \) -exec rm -rf {} +
