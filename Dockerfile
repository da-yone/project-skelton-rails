FROM ruby:2.3.3

ENV PACKAGES="git nodejs npm postgresql"
ENV APP_ROOT="/app"

RUN add-apt-repository ppa:chris-lea/node.js && \
    apt-get update && \
    apt-get install -y $PACKAGES && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir /app

WORKDIR $APP_ROOT
COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT
COPY package.json $APP_ROOT
RUN bundle install
COPY . $APP_ROOT
RUN npm install
