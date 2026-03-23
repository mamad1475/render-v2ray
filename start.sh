#!/bin/sh
if [ -z "$PORT" ]; then
  PORT=10000
fi
sed -i "s/\"port\": 10000/\"port\": ${PORT}/g" /etc/xray/config.json
echo "Starting Xray on port $PORT ..."
exec xray -c /etc/xray/config.json
