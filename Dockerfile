FROM ruby:2.2.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /personal-site
WORKDIR /personal-site

ADD Gemfile /personal-site/Gemfile
ADD Gemfile.lock /personal-site/Gemfile.lock

RUN bundle install
ADD . /personal-site
