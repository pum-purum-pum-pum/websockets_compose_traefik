FROM ubuntu:18.04
# COPY server ./
COPY server /usr/local/bin/
EXPOSE 9002
RUN apt-get update && \
    apt-get install -y \
    libssl-dev \
    ca-certificates
RUN export RUST_BACKTRACE=1
ENTRYPOINT ["server"]
