FROM rust

WORKDIR /usr/src/marketplace-api

RUN rustup default stable
RUN cargo install diesel_cli --no-default-features --features "postgres"

COPY . .
RUN cp .env.example .env

RUN chmod +x start_app.sh