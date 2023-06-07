require File.expand_path("../lib/chirp_stack_api/version", __FILE__)
require 'time'

Gem::Specification.new do |s|
  s.name    = "chirp_stack_api"
  s.version = ChirpStackAPI::VERSION
  s.summary = "ChirpStack API"
  s.author  = "Cameron Harper"
  s.date = Date.today.to_s
  s.files = Dir.glob("lib/**/*.rb")

  s.add_runtime_dependency 'grpc'
  s.add_runtime_dependency 'grpc-tools'

  s.required_ruby_version = '>= 2.0'

end
