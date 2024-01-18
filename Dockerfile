FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y build-essential binutils-arm-none-eabi git libpng-dev


RUN apt-get update && \
    apt-get install -y xterm

COPY . .

RUN git clone https://github.com/pret/agbcc

WORKDIR /agbcc

RUN ./build.sh 

RUN    ./install.sh ../
WORKDIR /

CMD  make



