FROM ubuntu:20.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y python3 python3-flask python3-psycopg2 python-configparser

COPY app/web.py /srv/app/web.py
COPY app/conf/web.conf /srv/app/conf/web.conf

WORKDIR /srv/app/
CMD [ "sh", "-c", "python3 web.py" ]
