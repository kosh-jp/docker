FROM python:3.8

RUN pip install Flask==1.1.2 gunicorn==20.0.4

COPY gunicorn_setting.py /etc/guniconr/gunicorn_setting.py
# RUN systemctl enable --now gunicorn.socket

WORKDIR /var/www

CMD gunicorn app:app -c /etc/guniconr/gunicorn_setting.py

# EXPOSE 5000 
# # # run実行時のコマンド
# # # ENTRYPOINT->CMDでCMDはrunのときの引数で上書きすることが可能
# ENTRYPOINT [ "gunicorn", "app:app" ]
# CMD [ "-c", "/app/config/gunicorn_settings.py" ]