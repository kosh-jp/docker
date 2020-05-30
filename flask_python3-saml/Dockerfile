FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y nginx python3-pip libxml2-dev libxmlsec1-dev libxmlsec1-openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt -subj "/C=JP/ST=Osaka/L=Osaka-city/O=hisafi.com/CN=localhost"

WORKDIR /demo-flask/

COPY ./python3-saml/demo-flask/requirements.txt .

RUN pip3 install -r requirements.txt \
  && pip3 install python3-saml gunicorn

CMD gunicorn index:app --bind=0.0.0.0:443 --keyfile /etc/ssl/private/localhost.key --certfile /etc/ssl/certs/localhost.crt
