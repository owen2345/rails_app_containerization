FROM ruby:3.1
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq
RUN apt install yarn -y
RUN apt install npm -y # (Hacky) bk of https://github.com/rails/cssbundling-rails/blob/3f359b0900712654fe4139eddbfcd8cc1559a479/lib/install/sass/install.rb


RUN gem install bundler
WORKDIR /app


