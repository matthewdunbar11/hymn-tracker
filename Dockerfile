FROM ruby:2.6.0

RUN apt-get update
RUN apt-get install -y curl

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

RUN nvm install node

RUN mkdir /app
WORKDIR /app

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN bundle install

ADD package.json package.json

RUN npm install

ADD . .

CMD bundle exec s