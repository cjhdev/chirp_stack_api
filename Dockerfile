FROM ruby:3.2.2-bullseye

WORKDIR /generator
VOLUME /generator

RUN dpkg --add-architecture i386 \
  && DEBIAN_FRONTEND=noninteractive apt-get update -y -q \
  && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y -q \
    make \
    git

RUN git clone --depth=1 --branch='v4.13.0' https://github.com/chirpstack/chirpstack /opt/chirpstack

RUN gem install --version '1.73.0' grpc-tools

COPY script/generate.rb /generator/script/generate.rb
COPY version /generator/version

ENTRYPOINT ["ruby", "script/generate.rb"]
