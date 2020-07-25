FROM nginx:1.17.6-alpine

RUN mkdir -p /etc/nginx /var/www/test
COPY nginx.conf /etc/nginx/nginx.conf

# テスト用のインデックスファイル作成
RUN echo "This is Test Page!" > /var/www/test/index.html

# ベースイメージnginxであれば、ENTRYPOINTは必要なし(デーモン起動される)