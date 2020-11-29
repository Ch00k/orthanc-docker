from jodogne/orthanc

RUN apt update && apt install -y nginx
RUN rm -f /etc/nginx/sites-enabled/*
COPY nginx_site.conf /etc/nginx/sites-enabled/orthanc

COPY run.sh /run.sh

EXPOSE 80
EXPOSE 4242

ENTRYPOINT /run.sh

CMD [ "/etc/orthanc/" ]
