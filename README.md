# docker-singer-exchangerateapi
Runs the singer tap:
    
    tap-exchangeratehost  | target-stitch 

This is useful if you want to run this on a CI platform or locally.
Each run sets the pull date to the current date.
Change the config.usd.json if you want a different base currency.
If you have never run it before and you want historical data, you can modify the config.usd.json to set the first run load date.

# Prerequisites
Must have a stitch account and have setup a [Stitch Import API](https://www.stitchdata.com/docs/developers/import-api/).

# Usage
    export STITCH_CLIENT_ID="<INSERT YOUR STITCH CLIENT ID>"
    export STITCH_TOKEN="<INSERT YOUR STITCH IMPORT API TOKEN>"
    ./docker/build.sh
    ./docker/run.sh
