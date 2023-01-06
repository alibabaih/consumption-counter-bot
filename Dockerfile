FROM python:3.7 AS build

ENV TOKEN=""

RUN mkdir -p /home/bot

WORKDIR /home/bot

COPY . /home/bot

RUN pip install --user -r requirements.txt

FROM python:3.7-alpine

COPY --from=build /home/bot /home/bot
COPY --from=build /root/.local /root/.local

WORKDIR /home/bot

ENTRYPOINT [ "python", "main.py" ]
