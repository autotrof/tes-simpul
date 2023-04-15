FROM ruby:3.2.1-alpine

RUN apk add build-base sqlite-dev nodejs npm tzdata

RUN gem install bundler

WORKDIR /app

COPY . /app
COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 3000

RUN npm install
RUN /app/bin/vite build
RUN rails db:migrate
CMD rm -f tmp/pids/server.pid & rails s -b '0.0.0.0'