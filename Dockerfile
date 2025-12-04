FROM python:3.10-bullseye
RUN python -m pip install --user --upgrade pip
RUN pip install git+https://github.com/evvnt/tap-exchangeratehost.git
RUN pip install target-stitch

COPY ./config.usd.json ./config.usd.json
COPY ./config.json ./config.json
COPY ./docker/entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]


