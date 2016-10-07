FROM ruby:2.3.1

ENV PACKAGES="git nodejs postgresql"
ENV APP_ROOT="/usr/src/app"

RUN apt-get update && \
    apt-get install -y $PACKAGES && \
    rm -rf /var/lib/apt/lists/* && \
    gem install rails

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock

RUN bundle install && bundle clean

WORKDIR $APP_ROOT
COPY . $APP_ROOT
EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
