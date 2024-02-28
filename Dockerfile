FROM nginx:1.19.2

COPY src /opt
ADD conf/nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]