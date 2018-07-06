FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /birthday-karte
WORKDIR /birthday-karte
ADD Gemfile /birthday-karte/Gemfile
ADD Gemfile.lock /birthday-karte/Gemfile.lock
RUN bundle install
ADD . /birthday-karte
