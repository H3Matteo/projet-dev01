from Nginx
RUN apt upadate && apt install net-tools iproute2 iputils-ping ssh vim -y
COPY . /var/lib/nginx/html
