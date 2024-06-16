FROM ubuntu:22.04

RUN apt-get update \
  && apt-get install --no-install-recommends --yes \
  locales \
  bind9-host \
  curl \
  dnsutils \
  httpie \
  iputils-ping \
  jq \
  netcat-openbsd \
  mysql-client \
  net-tools \
  postgresql-client \
  redis-tools \
  telnet \
  vim \
  nano \
  wget \
  influxdb-client \
  python3-setuptools \
  python3-pip \
  openssh-client \
  p7zip-full \
  xz-utils \
  gnupg2 \
  kafkacat \
  tcpdump \
  ngrep \
  nmap \
  && rm -rf /var/lib/apt/lists/*

# Locale setup
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
