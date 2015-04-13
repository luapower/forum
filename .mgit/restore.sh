#!/bin/bash
# decrypt/decompress redis backup
openssl enc -aes-256-cbc -d -in .mgit/dump.rdb.gz -k "$(cat .mgit/secret)" | gunzip - > .mgit/dump.rdb
