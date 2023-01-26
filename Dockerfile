FROM rust:slim
WORKDIR /app
COPY . /app
RUN cargo build --release
EXPOSE 3030

ENTRYPOINT ["./target/release/autocomplete-api-poc"]