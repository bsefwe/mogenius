#!/bin/sh
if [ ! -f UUID ]; then
  UUID="ad806487-2d26-4636-98b6-ab85cc8521f7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

