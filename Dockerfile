FROM ruby:2.3.0
RUN apt-get update -qq && apt-get install -y build-essential libmysqlclient-dev
RUN mkdir /Violence
WORKDIR /Violence
ADD Gemfile /Violence/Gemfile
ADD Gemfile.lock /Violence/Gemfile.lock
RUN bundle install
ADD . /Violence

EXPOSE 9292
