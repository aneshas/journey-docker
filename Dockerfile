# Journey Blog
FROM ubuntu:14.04
MAINTAINER Anes Hasicic <anes.hasicic@gmail.com>
RUN apt-get update && apt-get install -y --no-install-recommends \
		curl \
		gcc \
		libdevmapper-dev \
		libsqlite3-dev \
		git \
		golang \
		wget \
		unzip
RUN mkdir /root/go
ENV GOROOT=/usr/lib/go
ENV GOPATH=/root/go
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin
RUN git config --global http.sslVerify false
ADD /sh/start.sh /start.sh
CMD ["/start.sh"]

