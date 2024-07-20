FROM unit:1.32.1-python3.12 AS environ

WORKDIR /usr/src/app
VOLUME /var/lib/unit

COPY requirements.txt requirements.txt
RUN set -ex && python3 -m pip install -r requirements.txt

COPY . .


FROM environ AS prod

COPY config/config.json /docker-entrypoint.d


FROM environ AS dev

ENTRYPOINT ["flask", "--app", "app", "run", "--host=0.0.0.0"]
