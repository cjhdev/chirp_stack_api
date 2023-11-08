require 'fileutils'

NAMESPACE = "ChirpStackAPI"

VERSION=File.read(File.join("", "generator", "version")).strip

INPUT_PROTO = File.join("","opt", "chirpstack","api","proto")
OUTPUT_LIB = File.join("", "generator", "lib")
OUTPUT_PROTO = File.join(OUTPUT_LIB, "chirp_stack_api", "proto")
OUTPUT_GENERATED = File.join(OUTPUT_LIB, "chirp_stack_api", "generated")

## copy the protos we wish to modify

system "rm -rf #{File.join(OUTPUT_LIB, "chirp_stack_api")}"

FileUtils::mkdir_p(OUTPUT_PROTO)
FileUtils::mkdir_p(OUTPUT_GENERATED)

FileUtils::cp_r(INPUT_PROTO, File.join(OUTPUT_LIB, "chirp_stack_api"))

## insert ruby namespace

Dir[File.join(OUTPUT_PROTO, "**", "*.proto")].each do |fn|

  buffer = File.read(fn)

  pat = /package[ ]+([a-zA-Z]+)[ ]?;/

  if m = pat.match(buffer)

    # insert below the generic base name
    buffer.sub!(m.to_s, "#{m.to_s}\n\noption ruby_package = \"#{NAMESPACE}::#{m[1].upcase}\";")

    File.open(fn, "w") do |f|

      puts "modifying #{fn}"

      f.puts buffer

    end

  end

end

## generate

system "grpc_tools_ruby_protoc -I/opt/googleapis -I#{OUTPUT_PROTO} --ruby_out=#{OUTPUT_GENERATED} --grpc_out=#{OUTPUT_GENERATED} #{Dir[File.join(OUTPUT_PROTO, "**", "*.proto")].join(" ")}"

File.open(File.join(OUTPUT_LIB, "chirp_stack_api", "version.rb"), "w") do |f|

  f.puts "module #{NAMESPACE}"
  f.puts ""
  f.puts "  VERSION='#{VERSION}'"
  f.puts ""
  f.puts "end"

end


