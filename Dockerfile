FROM ruby:3.3.0

RUN apt-get update -y && apt-get install -y nodejs

WORKDIR /app

COPY Gemfile* ./

RUN bundle install

COPY . .

ENV BINDING="0.0.0.0"
CMD ["rails", "server"]