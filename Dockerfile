FROM elixir:latest

ENV NODE_VERSION 11.8.0
ENV NPM_VERSION 6.5.0

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs

RUN npm install npm@${NPM_VERSION} -g

RUN mix local.hex --force && \
  mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez && \
  mix local.rebar --force

WORKDIR /app