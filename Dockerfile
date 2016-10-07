FROM ruby:2.3.1

ENV PACKAGES="git nodejs postgresql"
ENV APP_ROOT="/usr/src/app"

RUN apt-get update && \
    apt-get install -y $PACKAGES && \
    rm -rf /var/lib/apt/lists/*

WORKDIR $APP_ROOT
COPY . $APP_ROOT
EXPOSE 3000

RUN gem install rails && \
    bundle install && \
    bundle clean

CMD ["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
