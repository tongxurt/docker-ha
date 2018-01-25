FROM centos-base

RUN yum install -y keepalived
RUN cd /opt && \
    wget http://nginx.org/download/nginx-1.13.8.tar.gz && \
    tar -zxvf nginx-1.13.8.tar.gz && \
    cd nginx-1.13.8 && \
    ./configure && \
    make && make install

ENTRYPOINT [ "tail", "-f", "/etc/issue" ]
