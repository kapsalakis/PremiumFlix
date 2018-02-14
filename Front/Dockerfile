FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /front
WORKDIR /front
COPY Gemfile /front/Gemfile
COPY Gemfile.lock /front/Gemfile.lock
RUN bundle install
COPY . /front
