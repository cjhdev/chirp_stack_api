# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: integration/integration.proto

require 'google/protobuf'

require 'common/common_pb'
require 'gw/gw_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/struct_pb'


descriptor_data = "\n\x1dintegration/integration.proto\x12\x0bintegration\x1a\x13\x63ommon/common.proto\x1a\x0bgw/gw.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x1cgoogle/protobuf/struct.proto\"\xd5\x02\n\nDeviceInfo\x12\x11\n\ttenant_id\x18\x01 \x01(\t\x12\x13\n\x0btenant_name\x18\x02 \x01(\t\x12\x16\n\x0e\x61pplication_id\x18\x03 \x01(\t\x12\x18\n\x10\x61pplication_name\x18\x04 \x01(\t\x12\x19\n\x11\x64\x65vice_profile_id\x18\x05 \x01(\t\x12\x1b\n\x13\x64\x65vice_profile_name\x18\x06 \x01(\t\x12\x13\n\x0b\x64\x65vice_name\x18\x07 \x01(\t\x12\x0f\n\x07\x64\x65v_eui\x18\x08 \x01(\t\x12\x31\n\x14\x64\x65vice_class_enabled\x18\n \x01(\x0e\x32\x13.common.DeviceClass\x12/\n\x04tags\x18\t \x03(\x0b\x32!.integration.DeviceInfo.TagsEntry\x1a+\n\tTagsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"s\n\x11UplinkRelayRxInfo\x12\x0f\n\x07\x64\x65v_eui\x18\x01 \x01(\t\x12\x11\n\tfrequency\x18\x02 \x01(\r\x12\n\n\x02\x64r\x18\x03 \x01(\r\x12\x0b\n\x03snr\x18\x04 \x01(\x05\x12\x0c\n\x04rssi\x18\x05 \x01(\x05\x12\x13\n\x0bwor_channel\x18\x06 \x01(\r\"S\n\x11JoinServerContext\x12\x16\n\x0esession_key_id\x18\x01 \x01(\t\x12&\n\tapp_s_key\x18\x02 \x01(\x0b\x32\x13.common.KeyEnvelope\"\xcd\x03\n\x0bUplinkEvent\x12\x18\n\x10\x64\x65\x64uplication_id\x18\x01 \x01(\t\x12(\n\x04time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x03 \x01(\x0b\x32\x17.integration.DeviceInfo\x12\x10\n\x08\x64\x65v_addr\x18\x04 \x01(\t\x12\x0b\n\x03\x61\x64r\x18\x05 \x01(\x08\x12\n\n\x02\x64r\x18\x06 \x01(\r\x12\r\n\x05\x66_cnt\x18\x07 \x01(\r\x12\x0e\n\x06\x66_port\x18\x08 \x01(\r\x12\x11\n\tconfirmed\x18\t \x01(\x08\x12\x0c\n\x04\x64\x61ta\x18\n \x01(\x0c\x12\'\n\x06object\x18\x0b \x01(\x0b\x32\x17.google.protobuf.Struct\x12!\n\x07rx_info\x18\x0c \x03(\x0b\x32\x10.gw.UplinkRxInfo\x12!\n\x07tx_info\x18\r \x01(\x0b\x32\x10.gw.UplinkTxInfo\x12\x35\n\rrelay_rx_info\x18\x0e \x01(\x0b\x32\x1e.integration.UplinkRelayRxInfo\x12;\n\x13join_server_context\x18\x0f \x01(\x0b\x32\x1e.integration.JoinServerContext\"\x83\x02\n\tJoinEvent\x12\x18\n\x10\x64\x65\x64uplication_id\x18\x01 \x01(\t\x12(\n\x04time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x03 \x01(\x0b\x32\x17.integration.DeviceInfo\x12\x10\n\x08\x64\x65v_addr\x18\x04 \x01(\t\x12\x35\n\rrelay_rx_info\x18\x05 \x01(\x0b\x32\x1e.integration.UplinkRelayRxInfo\x12;\n\x13join_server_context\x18\x06 \x01(\x0b\x32\x1e.integration.JoinServerContext\"\xbd\x01\n\x08\x41\x63kEvent\x12\x18\n\x10\x64\x65\x64uplication_id\x18\x01 \x01(\t\x12(\n\x04time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x03 \x01(\x0b\x32\x17.integration.DeviceInfo\x12\x15\n\rqueue_item_id\x18\x04 \x01(\t\x12\x14\n\x0c\x61\x63knowledged\x18\x05 \x01(\x08\x12\x12\n\nf_cnt_down\x18\x06 \x01(\r\"\xdd\x01\n\nTxAckEvent\x12\x13\n\x0b\x64ownlink_id\x18\x01 \x01(\r\x12(\n\x04time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x03 \x01(\x0b\x32\x17.integration.DeviceInfo\x12\x15\n\rqueue_item_id\x18\x04 \x01(\t\x12\x12\n\nf_cnt_down\x18\x05 \x01(\r\x12\x12\n\ngateway_id\x18\x06 \x01(\t\x12#\n\x07tx_info\x18\x07 \x01(\x0b\x32\x12.gw.DownlinkTxInfo\"\xa6\x02\n\x08LogEvent\x12(\n\x04time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x02 \x01(\x0b\x32\x17.integration.DeviceInfo\x12$\n\x05level\x18\x03 \x01(\x0e\x32\x15.integration.LogLevel\x12\"\n\x04\x63ode\x18\x04 \x01(\x0e\x32\x14.integration.LogCode\x12\x13\n\x0b\x64\x65scription\x18\x05 \x01(\t\x12\x33\n\x07\x63ontext\x18\x06 \x03(\x0b\x32\".integration.LogEvent.ContextEntry\x1a.\n\x0c\x43ontextEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\xe8\x01\n\x0bStatusEvent\x12\x18\n\x10\x64\x65\x64uplication_id\x18\x01 \x01(\t\x12(\n\x04time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x03 \x01(\x0b\x32\x17.integration.DeviceInfo\x12\x0e\n\x06margin\x18\x05 \x01(\x05\x12\x1d\n\x15\x65xternal_power_source\x18\x06 \x01(\x08\x12!\n\x19\x62\x61ttery_level_unavailable\x18\x07 \x01(\x08\x12\x15\n\rbattery_level\x18\x08 \x01(\x02\"\xa5\x01\n\rLocationEvent\x12\x18\n\x10\x64\x65\x64uplication_id\x18\x01 \x01(\t\x12(\n\x04time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x03 \x01(\x0b\x32\x17.integration.DeviceInfo\x12\"\n\x08location\x18\x04 \x01(\x0b\x32\x10.common.Location\"\xdb\x01\n\x10IntegrationEvent\x12\x18\n\x10\x64\x65\x64uplication_id\x18\x01 \x01(\t\x12(\n\x04time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x0b\x64\x65vice_info\x18\x03 \x01(\x0b\x32\x17.integration.DeviceInfo\x12\x18\n\x10integration_name\x18\x04 \x01(\t\x12\x12\n\nevent_type\x18\x05 \x01(\t\x12\'\n\x06object\x18\x06 \x01(\x0b\x32\x17.google.protobuf.Struct\"\x88\x01\n\x0f\x44ownlinkCommand\x12\n\n\x02id\x18\x01 \x01(\t\x12\x0f\n\x07\x64\x65v_eui\x18\x02 \x01(\t\x12\x11\n\tconfirmed\x18\x03 \x01(\x08\x12\x0e\n\x06\x66_port\x18\x04 \x01(\r\x12\x0c\n\x04\x64\x61ta\x18\x05 \x01(\x0c\x12\'\n\x06object\x18\x06 \x01(\x0b\x32\x17.google.protobuf.Struct*,\n\x08LogLevel\x12\x08\n\x04INFO\x10\x00\x12\x0b\n\x07WARNING\x10\x01\x12\t\n\x05\x45RROR\x10\x02*\xea\x01\n\x07LogCode\x12\x0b\n\x07UNKNOWN\x10\x00\x12\x19\n\x15\x44OWNLINK_PAYLOAD_SIZE\x10\x01\x12\x10\n\x0cUPLINK_CODEC\x10\x02\x12\x12\n\x0e\x44OWNLINK_CODEC\x10\x03\x12\x08\n\x04OTAA\x10\x04\x12\x16\n\x12UPLINK_F_CNT_RESET\x10\x05\x12\x0e\n\nUPLINK_MIC\x10\x06\x12\x1f\n\x1bUPLINK_F_CNT_RETRANSMISSION\x10\x07\x12\x14\n\x10\x44OWNLINK_GATEWAY\x10\x08\x12\x18\n\x14RELAY_NEW_END_DEVICE\x10\t\x12\x0e\n\nF_CNT_DOWN\x10\nB\x9e\x01\n\x1dio.chirpstack.api.integrationB\x10IntegrationProtoP\x01Z3github.com/brocaar/chirpstack/api/go/v4/integration\xaa\x02\x16\x43hirpstack.Integration\xea\x02\x1a\x43hirpStackAPI::INTEGRATIONb\x06proto3"

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
    ["common.KeyEnvelope", "common/common.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["gw.UplinkRxInfo", "gw/gw.proto"],
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
  module INTEGRATION
    DeviceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.DeviceInfo").msgclass
    UplinkRelayRxInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.UplinkRelayRxInfo").msgclass
    JoinServerContext = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.JoinServerContext").msgclass
    UplinkEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.UplinkEvent").msgclass
    JoinEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.JoinEvent").msgclass
    AckEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.AckEvent").msgclass
    TxAckEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.TxAckEvent").msgclass
    LogEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.LogEvent").msgclass
    StatusEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.StatusEvent").msgclass
    LocationEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.LocationEvent").msgclass
    IntegrationEvent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.IntegrationEvent").msgclass
    DownlinkCommand = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.DownlinkCommand").msgclass
    LogLevel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.LogLevel").enummodule
    LogCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("integration.LogCode").enummodule
  end
end
