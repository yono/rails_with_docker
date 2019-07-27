from ruby:2.6.3
ENV LANG C.UTF-8
ENV APP_DIR /app
ENV BUNDLE_PATH $APP_DIR/vendor/bundle

# Prerequisites
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Node.js
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update && apt-get install -y nodejs

# yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# bundler
RUN gem install bundler
RUN bundle config path $BUNDLE_PATH

# Add project dir
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR
ADD . $APP_DIR
