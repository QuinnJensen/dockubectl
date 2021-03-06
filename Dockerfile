FROM debian:stable-slim

RUN apt-get update -q
RUN ln -s /usr/bin/dpkg-split /usr/sbin/
RUN ln -s /usr/bin/dpkg-deb /usr/sbin/
RUN ln -s /bin/rm /usr/sbin/
RUN ln -s /bin/tar /usr/sbin/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -q -y curl

RUN curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update -q && apt-get install -y kubectl
