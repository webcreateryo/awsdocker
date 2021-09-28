FROM ruby:2.5.1

RUN apt-get update -qq && \
  apt-get install -y build-essential \
  nodejs\
  mysql-server\
  mysql-client

RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
apt-get update && apt-get install -y yarn

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
apt-get install nodejs

WORKDIR /awsrails2

COPY Gemfile /awsrails2/Gemfile
COPY Gemfile.lock /awsrails2/Gemfile.lock

RUN gem install bundler
RUN bundle install


RUN mkdir -p tmp/sockets
