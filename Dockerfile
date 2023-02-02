FROM debian:11-slim
WORKDIR /opt/wpp
CMD ["./demo"]
EXPOSE 5000
RUN apt update
RUN apt install -y build-essential
COPY . .
RUN make
RUN apt-get purge -y build-essential
RUN apt-get autoremove -y
