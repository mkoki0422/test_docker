FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /ruby-product
COPY Gemfile Gemfile.lock /ruby-product/
RUN bundle install
