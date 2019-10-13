FROM ruby:2.6.0

RUN apt-get update -qq && apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN bundle install

ADD package.json package.json

RUN npm install

ADD . .

CMD bundle exec s