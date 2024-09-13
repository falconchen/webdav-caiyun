#!/bin/bash

# 设置要检查的路径
CHECK_PATH="/mnt/caiyunDisk/Youtube/ping.txt"

# 设置日志目录和日志文件
LOG_DIR="/root/docker-configs/webdav-caiyun/logs"
LOG_FILE="$LOG_DIR/$(date '+%Y-%m-%d').log"

# 如果日志目录不存在，则创建
if [ ! -d "$LOG_DIR" ]; then
  mkdir -p "$LOG_DIR"
fi

# 检查文件是否存在
if [ ! -f "$CHECK_PATH" ]; then
  echo "$(date '+%Y-%m-%d %H:%M:%S') - 文件 $CHECK_PATH 不存在，正在执行脚本..." >> "$LOG_FILE"
  # 执行指定的脚本
  /root/docker-configs/caiyun-webdav.sh >> "$LOG_FILE" 2>&1
else
  echo "$(date '+%Y-%m-%d %H:%M:%S') - 文件 $CHECK_PATH 已存在。" >> "$LOG_FILE"
fi
