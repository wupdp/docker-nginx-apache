FROM nginx:1.23.1

RUN apt-get update && apt-get install -y procps

RUN mkdir -p /var/cache/nginx/client_temp && \
    chown -R nginx:nginx /var/cache/nginx
RUN touch /var/run/nginx.pid && \
    chown nginx:nginx /var/run/nginx.pid

COPY upstream.conf /etc/nginx/sites-enabled/upstream.conf
COPY WebServer.conf /etc/nginx/sites-enabled/server.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY redblue.conf /etc/nginx/sites-enabled/redblue.conf
COPY www/ /var/www/
COPY ./cpu.sh /script/
COPY ./start.sh /script/

EXPOSE 80

CMD ["/script/start.sh"]