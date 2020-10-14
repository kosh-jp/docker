FROM python:3.8

RUN pip install Flask==1.1.2 gunicorn==20.0.4

COPY gunicorn_setting.py /etc/guniconr/gunicorn_setting.py

WORKDIR /var/www

CMD gunicorn app:app -c /etc/guniconr/gunicorn_setting.py