FROM rust as build


RUN apt-get update \
 && apt-get install -y libtesseract-dev tesseract-ocr tesseract-ocr-deu libleptonica-dev libclang-dev libproj-dev libgeos-dev libgdal-dev


RUN mkdir /project
WORKDIR /project

RUN cargo init
COPY ./Cargo.toml ./Cargo.toml

RUN cargo build --release


