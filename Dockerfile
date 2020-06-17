FROM circleci/ruby:2.7.0

RUN curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -  \
&& curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
&& sudo apt-get update -qq \
&& sudo apt-get install -y -qq libpq-dev cmake libzbar0 \ 
&& gem install bundler:2.1.4 \ 
&& sudo apt-get install -y nodejs \
&& sudo apt-get install --no-install-recommends yarn

