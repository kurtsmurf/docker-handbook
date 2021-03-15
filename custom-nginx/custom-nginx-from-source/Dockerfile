FROM ubuntu:latest

RUN apt-get update && \
    apt-get install build-essential curl libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    curl http://nginx.org/download/nginx-1.19.8.tar.gz --output nginx-1.19.8.tar.gz && \
    tar -xvf nginx-1.19.8.tar.gz && \
    rm nginx-1.19.8.tar.gz && \
    cd nginx-1.19.8 && \
    ./configure \
        --sbin-path=/usr/bin/nginx \
        --conf-path=/etc/nginx/nginx.conf \
        --error-log-path=/var/log/nginx/error.log \
        --http-log-path=/var/log/nginx/access.log \
        --with-pcre \
        --pid-path=/var/run/nginx.pid \
        --with-http_ssl_module && \
    make && make install && \
    cd .. && \
    rm -rf /nginx-1.19.8

CMD ["nginx", "-g", "daemon off;"]
