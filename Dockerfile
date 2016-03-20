FROM ruby:2.2.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /personal-site
WORKDIR /personal-site

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 20 --retry 5

VOLUME ["/etc/personal/"]

COPY  config/personal /etc/personal

EXPOSE 3000

ADD . /personal-site

CMD ["bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"]
