#!/bin/bash
set -e
sed -i "s/#{STITCH_CLIENT_ID}/$STITCH_CLIENT_ID/g" config.json
sed -i "s/#{STITCH_TOKEN}/$STITCH_TOKEN/g" config.json
sed -i "s/#{EXCHANGE_RATE_START_DATE}/$(printf '%(%Y-%m-%d)T\n' -1)/g" config.usd.json

tap-exchangeratehost -c config.usd.json | target-stitch -c config.json
