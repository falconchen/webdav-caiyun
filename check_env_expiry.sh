#!/bin/bash
file_path="/root/docker-configs/webdav-caiyun/.env"
EXPIRY_DAYS=26
LAST_DAYS=30

if [[ ! -e $file_path ]]; then
    /usr/bin/bark "文件不存在: $file_path"
    exit 1
fi
last_mod=$(stat -c %Y "$file_path")
current_time=$(date +%s)
diff_days=$(( (current_time - last_mod) / (24*60*60) ))
if [[ $diff_days -gt $EXPIRY_DAYS ]]; then
    /usr/bin/bark "文件已经创建于$diff_days天前，即将过期，请续订。"
elif [[ $diff_days -gt $LAST_DAYS ]]; then
    /usr/bin/bark "文件已经创建于$diff_days天前，已过期，请续订。"
fi
