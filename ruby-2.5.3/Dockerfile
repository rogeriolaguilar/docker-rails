FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

ENV APP_HOME /app
RUN mkdir $APP_HOME && gem install bundler  
WORKDIR $APP_HOME

ONBUILD COPY Gemfile* $APP_HOME/
ONBUILD COPY vendor $APP_HOME/vendor
ONBUILD RUN bundle install --no-cache --jobs 4 --local 

ONBUILD COPY . $APP_HOME
ONBUILD COPY entrypoint.sh /usr/bin/
ONBUILD RUN chmod +x /usr/bin/entrypoint.sh

ONBUILD ENTRYPOINT ["entrypoint.sh"]
ONBUILD EXPOSE 8080
ONBUILD CMD ["rails", "server", "-b", "0.0.0.0", "-p", "8080"]

