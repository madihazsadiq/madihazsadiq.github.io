FROM ruby:3.2

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock* ./
RUN bundle install

COPY . .

EXPOSE 4000