FROM ruby

RUN gem install jekyll bundler

WORKDIR /srv/jekyll/

ADD . .

# Install gems necessary for the project
RUN bundle install

CMD bundle exec jekyll serve --host=0.0.0.0
