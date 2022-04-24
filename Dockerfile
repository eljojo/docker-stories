FROM ruby:2.7-slim-buster
# based on https://github.com/shadyoak/s3_website/blob/40c139145f32020ebbf7acbadece8403ede32e4c/Dockerfile

ENV LANG en_US.UTF-8

# not an interactive install
ENV DEBIAN_FRONTEND=noninteractive

ENV JEKYLL_ENV production

RUN apt-get update -qq
RUN apt-get install -y openjdk-11-jre-headless rclone git build-essential
RUN gem install bundler
# RUN bundle install --deployment --without development test --path vendor/ruby

