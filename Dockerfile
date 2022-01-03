FROM ruby:2.7.0
  
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
  
WORKDIR /myartecle
COPY Gemfile /myartecle/Gemfile
COPY Gemfile.lock /myartecle/Gemfile.lock
RUN bundle install
RUN bundle update --bundler
CMD 'rails server -b 0.0.0.0'
  