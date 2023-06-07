Ruby ChirpStack API
===================

A Ruby Gem containing the generated GRPC code for talking to [ChirpStack V4](https://github.com/chirpstack/chirpstack).

## How To Use

Add this repository to your Gemfile:

`gem 'chirp_stack_api', git: 'https://github.com/cjhdev/chirp_stack_api', tag: 'v0.1.0'`

then

`require 'chirp_stack_api'`


The grpc types will be in the `ChirpStacKAPI` namespace with the chirpstack groups in uppercase.

e.g.

`ChirpStackAPI::API`

`ChirpStackAPI::GW`

`ChirpStackAPI::COMMON`


## How To Update

`make generate`

- creates docker environment
- runs the generator script

The generator script exists to:

- take a copy of the upstream proto files
- insert the Ruby namespace into our copy
- run protoc on our copy
- insert `require` for all the generated files




