FROM ruby:2.3.1

ENV PACKAGES="git nodejs postgresql"
ENV APP_ROOT="/app"

RUN apt-get update && \
    apt-get install -y $PACKAGES && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /app

WORKDIR $APP_ROOT
COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT
RUN bundle install
COPY . $APP_ROOT
