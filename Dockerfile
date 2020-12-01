from jodogne/orthanc:1.8.0

RUN apt update && \
    apt install -y nginx && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN rm -f /etc/nginx/sites-enabled/*
COPY nginx_site.conf /etc/nginx/sites-enabled/orthanc

COPY run.sh /run.sh

EXPOSE 80
EXPOSE 4242

ENTRYPOINT /run.sh /etc/orthanc
