# Journey Blog
FROM ubuntu:14.04
MAINTAINER Anes Hasicic <anes.hasicic@gmail.com>
RUN sudo apt-get update
RUN sudo apt-get install -y wget
RUN sudo apt-get install -y unzip
RUN sudo apt-get install -y git
RUN cd /root && wget https://github.com/kabukky/journey/releases/download/v0.0.2/journey-linux-amd64.zip
RUN cd /root && unzip journey-linux-amd64.zip
RUN cd /root && rm journey-linux-amd64.zip && mv journey-linux-amd64/ journey
RUN cd /root/journey/content/themes && git clone https://github.com/TryGhost/Casper.git casper
ADD config.json /config.json
ADD start.sh /start.sh
CMD ["/start.sh"]

