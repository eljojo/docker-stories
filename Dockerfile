FROM ruby:2.5-stretch

ENV LANG en_US.UTF-8

# not an interactive install
ENV DEBIAN_FRONTEND=noninteractive

ENV JEKYLL_ENV production

RUN apt-get update -qq
RUN apt-get install -y openjdk-8-jre-headless
RUN gem install bundler
# RUN bundle install --deployment --without development test --path vendor/ruby

