# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: api/device_profile.proto for package 'ChirpStackAPI.API'

require 'grpc'
require 'api/device_profile_pb'

module ChirpStackAPI
  module API
    module DeviceProfileService
      # DeviceProfileService is the service providing API methods for managing device-profiles.
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'api.DeviceProfileService'

        # Create the given device-profile.
        rpc :Create, ::ChirpStackAPI::API::CreateDeviceProfileRequest, ::ChirpStackAPI::API::CreateDeviceProfileResponse
        # Get the device-profile for the given ID.
        rpc :Get, ::ChirpStackAPI::API::GetDeviceProfileRequest, ::ChirpStackAPI::API::GetDeviceProfileResponse
        # Update the given device-profile.
        rpc :Update, ::ChirpStackAPI::API::UpdateDeviceProfileRequest, ::Google::Protobuf::Empty
        # Delete the device-profile with the given ID.
        rpc :Delete, ::ChirpStackAPI::API::DeleteDeviceProfileRequest, ::Google::Protobuf::Empty
        # List the available device-profiles.
        rpc :List, ::ChirpStackAPI::API::ListDeviceProfilesRequest, ::ChirpStackAPI::API::ListDeviceProfilesResponse
        # List available ADR algorithms.
        rpc :ListAdrAlgorithms, ::Google::Protobuf::Empty, ::ChirpStackAPI::API::ListDeviceProfileAdrAlgorithmsResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end