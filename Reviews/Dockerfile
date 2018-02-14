FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /reviews
WORKDIR /reviews
COPY Gemfile /reviews/Gemfile
COPY Gemfile.lock /reviews/Gemfile.lock
RUN bundle install
COPY . /reviews
