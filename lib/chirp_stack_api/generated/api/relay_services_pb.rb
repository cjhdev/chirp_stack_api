# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: api/relay.proto for package 'ChirpStackAPI.API'

require 'grpc'
require 'api/relay_pb'

module ChirpStackAPI
  module API
    module RelayService
      # RelayService is the service providing API methos for managing relays.
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'api.RelayService'

        # List lists the relays for the given application id.
        rpc :List, ::ChirpStackAPI::API::ListRelaysRequest, ::ChirpStackAPI::API::ListRelaysResponse
        # AddDevice adds the given device to the relay.
        rpc :AddDevice, ::ChirpStackAPI::API::AddRelayDeviceRequest, ::Google::Protobuf::Empty
        # RemoveDevice removes the given device from the relay.
        rpc :RemoveDevice, ::ChirpStackAPI::API::RemoveRelayDeviceRequest, ::Google::Protobuf::Empty
        # ListDevices lists the devices for the given relay.
        rpc :ListDevices, ::ChirpStackAPI::API::ListRelayDevicesRequest, ::ChirpStackAPI::API::ListRelayDevicesResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end