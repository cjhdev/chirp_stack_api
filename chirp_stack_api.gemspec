require File.expand_path("../lib/chirp_stack_api/version", __FILE__)
require 'time'

Gem::Specification.new do |s|
  s.name    = "chirp_stack_api"
  s.version = ChirpStackAPI::VERSION
  s.summary = "ChirpStack API"
  s.author  = "Cameron Harper"
  s.license  = "MIT"
  s.date = Date.today.to_s
  s.files = Dir.glob("lib/**/*.rb")

  s.add_runtime_dependency 'grpc', '~> 1.73.0'

  s.required_ruby_version = '>= 3.0'

end
