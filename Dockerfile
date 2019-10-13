FROM ruby:2.6.0

RUN mkdir /app
WORKDIR /app

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN bundle install

ADD package.json package.json

RUN yarn

ADD . .

CMD bundle exec s