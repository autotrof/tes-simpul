FROM ruby:3.2.1-alpine

RUN apk add --update build-base sqlite-dev nodejs tzdata

RUN gem install bundler

WORKDIR /app

COPY . /app
COPY Gemfile Gemfile.lock ./

RUN bundle install

EXPOSE 3000

RUN npm install
RUN /app/bin/vite build
CMD rm -f tmp/pids/server.pid & rails s -b '0.0.0.0'