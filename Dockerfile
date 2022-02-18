FROM linuxserver/chevereto
RUN apk add --no-cache wget tar
RUN rm -rf /app/chevereto \
    && wget https://pan.yropo.workers.dev/source/linux/chevereto.tar.gz -O /app/chevereto.tar.gz \
    && wget -q https://pan.yropo.workers.dev/source/linux/chevereto.tar.gz -O /app/chevereto.tar.gz \
    && cd /app && tar -zxvf chevereto.tar.gz
EXPOSE 80 443
ENTRYPOINT ["/init"]