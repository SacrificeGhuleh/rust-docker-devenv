FROM ubuntu:24.04

# Update default packages
RUN apt-get -qq update

RUN apt-get install -y -q \
    python3-pip \
    git \
    curl

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN pip3 install ruff pre-commit --break-system-packages
