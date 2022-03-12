FROM ruby:2.6.6
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -qq \
    && apt-get install -y nodejs yarn \
    && mkdir -p /wellbe_corp

WORKDIR /wellbe_corp
COPY Gemfile /wellbe_corp/Gemfile
COPY Gemfile.lock /wellbe_corp/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /wellbe_corp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
