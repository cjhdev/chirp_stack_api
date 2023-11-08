$LOAD_PATH.unshift File.expand_path("#{File.dirname(__FILE__)}/generated")

Dir["#{File.dirname(__FILE__)}/generated/**/*_pb.rb"].each { |f| require f }

$LOAD_PATH.shift
