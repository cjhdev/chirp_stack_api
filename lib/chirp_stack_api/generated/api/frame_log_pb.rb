# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: api/frame_log.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
require 'common/common_pb'
require 'gw/gw_pb'


descriptor_data = "\n\x13\x61pi/frame_log.proto\x12\x03\x61pi\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x13\x63ommon/common.proto\x1a\x0bgw/gw.proto\"\x90\x02\n\x0eUplinkFrameLog\x12\x13\n\x0bphy_payload\x18\x01 \x01(\x0c\x12!\n\x07tx_info\x18\x02 \x01(\x0b\x32\x10.gw.UplinkTxInfo\x12!\n\x07rx_info\x18\x03 \x03(\x0b\x32\x10.gw.UplinkRxInfo\x12\x1d\n\x06m_type\x18\x04 \x01(\x0e\x32\r.common.MType\x12\x10\n\x08\x64\x65v_addr\x18\x05 \x01(\t\x12\x0f\n\x07\x64\x65v_eui\x18\x06 \x01(\t\x12(\n\x04time\x18\x07 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x18\n\x10plaintext_f_opts\x18\x08 \x01(\x08\x12\x1d\n\x15plaintext_frm_payload\x18\t \x01(\x08\"\x9a\x02\n\x10\x44ownlinkFrameLog\x12(\n\x04time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x13\n\x0bphy_payload\x18\x02 \x01(\x0c\x12#\n\x07tx_info\x18\x03 \x01(\x0b\x32\x12.gw.DownlinkTxInfo\x12\x13\n\x0b\x64ownlink_id\x18\x04 \x01(\r\x12\x12\n\ngateway_id\x18\x05 \x01(\t\x12\x1d\n\x06m_type\x18\x06 \x01(\x0e\x32\r.common.MType\x12\x10\n\x08\x64\x65v_addr\x18\x07 \x01(\t\x12\x0f\n\x07\x64\x65v_eui\x18\x08 \x01(\t\x12\x18\n\x10plaintext_f_opts\x18\t \x01(\x08\x12\x1d\n\x15plaintext_frm_payload\x18\n \x01(\x08\x42z\n\x11io.chirpstack.apiB\rFrameLogProtoP\x01Z.github.com/chirpstack/chirpstack/api/go/v4/api\xaa\x02\x0e\x43hirpstack.Api\xea\x02\x12\x43hirpStackAPI::APIb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["gw.UplinkTxInfo", "gw/gw.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module ChirpStackAPI
  module API
    UplinkFrameLog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.UplinkFrameLog").msgclass
    DownlinkFrameLog = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("api.DownlinkFrameLog").msgclass
  end
end
