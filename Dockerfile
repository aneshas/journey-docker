# Journey Blog
FROM ubuntu:14.04
MAINTAINER Anes Hasicic <anes.hasicic@gmail.com>
RUN sudo apt-get update
RUN sudo apt-get install -y libcap2-bin
RUN sudo apt-get install -y wget
ADD start.sh /start.sh
CMD ["/start.sh"]

