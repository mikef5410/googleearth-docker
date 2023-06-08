#FROM debian:buster
FROM debian:bullseye
MAINTAINER Matt McCormick <matt@mmmccormick.com>

RUN apt-get update
RUN apt-get -y --force-yes install x-window-system
RUN apt-get install -y mesa-utils mesa-utils-extra libfreeimage3
RUN apt-get install -y xdg-utils wget
RUN apt-get install -y libasound2 libc6 libcups2 libdbus-1-3 libfontconfig1 libfreetype6 libgcc1 libglib2.0-0 libglu1-mesa libgstreamer1.0-0 libgstreamer-plugins-base1.0-0 libproxy1v5 libsm6 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxext6 libxml2 libxrender1 libxtst6 libsqlite3-0

# Get: https://dl.google.com/dl/linux/direct/google-earth-pro-stable_7.3.3_amd64.deb and install it.

RUN wget --no-check-certificate -o /tmp/google-earth.deb https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
RUN dpkg -i /tmp/google-earth.deb

CMD /bin/bash
