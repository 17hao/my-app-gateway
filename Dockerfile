FROM nginx:latest
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ssl /etc/nginx/ssl
RUN unlink /var/log/nginx/access.log
RUN unlink /var/log/nginx/error.log
