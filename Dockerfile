FROM ubuntu:latest
ENV LANG en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq
RUN apt-get install -y rclone imagemagick && rm -rf /var/lib/apt/lists/*

