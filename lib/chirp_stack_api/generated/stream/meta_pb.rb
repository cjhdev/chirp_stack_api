# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: stream/meta.proto

require 'google/protobuf'

require 'common/common_pb'
require 'gw/gw_pb'


descriptor_data = "\n\x11stream/meta.proto\x12\x06stream\x1a\x13\x63ommon/common.proto\x1a\x0bgw/gw.proto\"\xee\x01\n\nUplinkMeta\x12\x0f\n\x07\x64\x65v_eui\x18\x01 \x01(\t\x12!\n\x07tx_info\x18\x02 \x01(\x0b\x32\x10.gw.UplinkTxInfo\x12!\n\x07rx_info\x18\x03 \x03(\x0b\x32\x10.gw.UplinkRxInfo\x12\x1e\n\x16phy_payload_byte_count\x18\x04 \x01(\r\x12\x1e\n\x16mac_command_byte_count\x18\x05 \x01(\r\x12&\n\x1e\x61pplication_payload_byte_count\x18\x06 \x01(\r\x12!\n\nframe_type\x18\x07 \x01(\x0e\x32\r.common.FType\"\xff\x01\n\x0c\x44ownlinkMeta\x12\x0f\n\x07\x64\x65v_eui\x18\x01 \x01(\t\x12\x1a\n\x12multicast_group_id\x18\x02 \x01(\t\x12#\n\x07tx_info\x18\x03 \x01(\x0b\x32\x12.gw.DownlinkTxInfo\x12\x1e\n\x16phy_payload_byte_count\x18\x04 \x01(\r\x12\x1e\n\x16mac_command_byte_count\x18\x05 \x01(\r\x12&\n\x1e\x61pplication_payload_byte_count\x18\x06 \x01(\r\x12!\n\nframe_type\x18\x07 \x01(\x0e\x32\r.common.FType\x12\x12\n\ngateway_id\x18\x08 \x01(\tB\xba\x01\n\x18io.chirpstack.api.streamB\tMetaProtoP\x01Z1github.com/chirpstack/chirpstack/api/go/v4/stream\xaa\x02\x11\x43hirpstack.Stream\xca\x02\x11\x43hirpstack\\Stream\xe2\x02\x1dGPBMetadata\\Chirpstack\\Stream\xea\x02\x15\x43hirpStackAPI::STREAMb\x06proto3"

pool = ::Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module ChirpStackAPI
  module STREAM
    UplinkMeta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("stream.UplinkMeta").msgclass
    DownlinkMeta = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("stream.DownlinkMeta").msgclass
  end
end
