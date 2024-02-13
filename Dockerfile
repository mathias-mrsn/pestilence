FROM debian:bullseye

COPY . /virus

RUN apt-get update -y
RUN apt-get install -y \
    make \
    nasm \
    binutils \
    strace \
    gdb \
    vim \
    procps \
    sudo \
    file \
    gcc \
    gcc-multilib \
    curl \
    wget \
    systemctl
RUN useradd -ms /bin/bash user
RUN echo 'root:docker' | chpasswd
RUN echo 'user:docker' | chpasswd
RUN usermod -aG sudo user
RUN mkdir /tmp/test /tmp/test2
RUN chmod 777 /virus

USER user
WORKDIR /virus

ENTRYPOINT ["tail", "-f", "/dev/null"]

