FROM python:3.7

RUN apt-get update \
  && apt-get install -y libxml2-dev libxmlsec1-dev libxmlsec1-openssl

ADD ./python3-saml/demo-flask/requirements.txt /demo-flask/

WORKDIR /demo-flask/

RUN pip install -r requirements.txt \
  && pip install python3-saml

CMD python index.py