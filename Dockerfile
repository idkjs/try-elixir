FROM elixir:latest

RUN yes | mix local.hex
RUN yes | mix archive.install hex phx_new 1.4.0
RUN mix local.rebar --force

WORKDIR /app