# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: api/multicast_group.proto for package 'ChirpStackAPI.API'

require 'grpc'
require 'api/multicast_group_pb'

module ChirpStackAPI
  module API
    module MulticastGroupService
      # MulticastGroupService is the service managing multicast-groups.
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'api.MulticastGroupService'

        # Create the given multicast group.
        rpc :Create, ::ChirpStackAPI::API::CreateMulticastGroupRequest, ::ChirpStackAPI::API::CreateMulticastGroupResponse
        # Get returns the multicast group for the given ID.
        rpc :Get, ::ChirpStackAPI::API::GetMulticastGroupRequest, ::ChirpStackAPI::API::GetMulticastGroupResponse
        # Update the given multicast group.
        rpc :Update, ::ChirpStackAPI::API::UpdateMulticastGroupRequest, ::Google::Protobuf::Empty
        # Delete the multicast-group with the given ID.
        rpc :Delete, ::ChirpStackAPI::API::DeleteMulticastGroupRequest, ::Google::Protobuf::Empty
        # List the available multicast groups.
        rpc :List, ::ChirpStackAPI::API::ListMulticastGroupsRequest, ::ChirpStackAPI::API::ListMulticastGroupsResponse
        # Add a device to the multicast group.
        rpc :AddDevice, ::ChirpStackAPI::API::AddDeviceToMulticastGroupRequest, ::Google::Protobuf::Empty
        # Remove a device from the multicast group.
        rpc :RemoveDevice, ::ChirpStackAPI::API::RemoveDeviceFromMulticastGroupRequest, ::Google::Protobuf::Empty
        # Add a gateway to the multicast group.
        rpc :AddGateway, ::ChirpStackAPI::API::AddGatewayToMulticastGroupRequest, ::Google::Protobuf::Empty
        # Remove a gateway from the multicast group.
        rpc :RemoveGateway, ::ChirpStackAPI::API::RemoveGatewayFromMulticastGroupRequest, ::Google::Protobuf::Empty
        # Add the given item to the multicast group queue.
        rpc :Enqueue, ::ChirpStackAPI::API::EnqueueMulticastGroupQueueItemRequest, ::ChirpStackAPI::API::EnqueueMulticastGroupQueueItemResponse
        # Flush the queue for the given multicast group.
        rpc :FlushQueue, ::ChirpStackAPI::API::FlushMulticastGroupQueueRequest, ::Google::Protobuf::Empty
        # List the items in the multicast group queue.
        rpc :ListQueue, ::ChirpStackAPI::API::ListMulticastGroupQueueRequest, ::ChirpStackAPI::API::ListMulticastGroupQueueResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end
