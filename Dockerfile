FROM ruby

#RUN gem install jekyll>=3.7.4 bundler
RUN gem install bundler

WORKDIR /srv/jekyll/syntactproject

COPY Gemfile .

# Install gems necessary for the project
RUN bundle install

COPY ./ ./

CMD bundle exec jekyll serve --host=0.0.0.0
