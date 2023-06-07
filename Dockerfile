FROM ruby:3.2.2-bullseye

WORKDIR /generator
VOLUME /generator

RUN dpkg --add-architecture i386 \
  && DEBIAN_FRONTEND=noninteractive apt-get update -y -q \
  && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y -q \
    make \
    git

RUN git clone --depth=1 https://github.com/googleapis/googleapis.git  /opt/googleapis
RUN git clone --depth=1 https://github.com/chirpstack/chirpstack      /opt/chirpstack

RUN gem install grpc-tools grpc

COPY script/generate.rb /generator/script/generate.rb
COPY version /generator/version

ENTRYPOINT ["ruby", "script/generate.rb"]




