#!/bin/env bash
#/bin/rm -rf /var/cache/davfs2/*
cd /root/docker-configs/webdav-caiyun 
docker-compose down 
docker-compose up -d
mkdir /mnt/caiyunDisk 2>/dev/null
umount /mnt/caiyunDisk 2>/dev/null
rm -rf /var/run/mount.davfs/mnt-caiyunDisk.pid 2>/dev/null
cd -
echo "waiting for mounting"
sleep 30
mount.davfs -o noexec http://127.0.0.1:10086 /mnt/caiyunDisk
