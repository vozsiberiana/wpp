FROM debian:11-slim
WORKDIR /opt/wpp
CMD ["./demo"]
EXPOSE 5000
COPY . .
RUN apt-get update \
    && apt-get install -y build-essential \
    && make \
    && apt-get purge -y build-essential \
    && apt-get autoremove -y
