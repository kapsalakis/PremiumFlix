FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /movies
WORKDIR /movies
COPY Gemfile /movies/Gemfile
COPY Gemfile.lock /movies/Gemfile.lock
RUN bundle install
COPY . /movies
