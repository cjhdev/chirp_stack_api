# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: stream/api_request.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'common/common_pb'
require 'gw/gw_pb'


descriptor_data = "\n\x18stream/api_request.proto\x12\x06stream\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x13\x63ommon/common.proto\x1a\x0bgw/gw.proto\"\x98\x01\n\rApiRequestLog\x12\x0f\n\x07service\x18\x01 \x01(\t\x12\x0e\n\x06method\x18\x02 \x01(\t\x12\x35\n\x08metadata\x18\x03 \x03(\x0b\x32#.stream.ApiRequestLog.MetadataEntry\x1a/\n\rMetadataEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42\xc0\x01\n\x18io.chirpstack.api.streamB\x0f\x41piRequestProtoP\x01Z1github.com/chirpstack/chirpstack/api/go/v4/stream\xaa\x02\x11\x43hirpstack.Stream\xca\x02\x11\x43hirpstack\\Stream\xe2\x02\x1dGPBMetadata\\Chirpstack\\Stream\xea\x02\x15\x43hirpStackAPI::STREAMb\x06proto3"

pool = ::Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module ChirpStackAPI
  module STREAM
    ApiRequestLog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("stream.ApiRequestLog").msgclass
  end
end
