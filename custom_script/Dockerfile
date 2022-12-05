FROM ubuntu:focal

# Add hello scripts
ADD ./custom_script.sh /custom_script
RUN chmod +x /custom_script

# Add docker-compose-wait tool -------------------
ENV WAIT_VERSION 2.7.2
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
RUN chmod +x /wait

CMD ["/custom_script"]
