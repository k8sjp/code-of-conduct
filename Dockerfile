FROM ruby

WORKDIR /site
COPY Gemfile* /site/
RUN set -x && bundle install
