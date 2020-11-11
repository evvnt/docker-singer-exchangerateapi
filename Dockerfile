FROM python:3.7.6-stretch

RUN pip install tap-exchangeratesapi
RUN pip install target-stitch

COPY ./config.usd.json ./config.usd.json
COPY ./config.json ./config.json
COPY ./docker/entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]


