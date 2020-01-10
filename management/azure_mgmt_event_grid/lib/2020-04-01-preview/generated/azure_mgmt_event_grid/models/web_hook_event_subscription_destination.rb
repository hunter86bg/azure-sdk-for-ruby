# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # Information about the webhook destination for an event subscription.
    #
    class WebHookEventSubscriptionDestination < EventSubscriptionDestination

      include MsRestAzure


      def initialize
        @endpointType = "WebHook"
      end

      attr_accessor :endpointType

      # @return [String] The URL that represents the endpoint of the
      # destination of an event subscription.
      attr_accessor :endpoint_url

      # @return [String] The base URL that represents the endpoint of the
      # destination of an event subscription.
      attr_accessor :endpoint_base_url

      # @return [Integer] Maximum number of events per batch.
      attr_accessor :max_events_per_batch

      # @return [Integer] Preferred batch size in Kilobytes.
      attr_accessor :preferred_batch_size_in_kilobytes

      # @return [String] The Azure Active Directory Tenant ID to get the access
      # token that will be included as the bearer token in delivery requests.
      attr_accessor :azure_active_directory_tenant_id

      # @return [String] The Azure Active Directory Application ID or URI to
      # get the access token that will be included as the bearer token in
      # delivery requests.
      attr_accessor :azure_active_directory_application_id_or_uri


      #
      # Mapper for WebHookEventSubscriptionDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebHook',
          type: {
            name: 'Composite',
            class_name: 'WebHookEventSubscriptionDestination',
            model_properties: {
              endpointType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              endpoint_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endpointUrl',
                type: {
                  name: 'String'
                }
              },
              endpoint_base_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endpointBaseUrl',
                type: {
                  name: 'String'
                }
              },
              max_events_per_batch: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.maxEventsPerBatch',
                type: {
                  name: 'Number'
                }
              },
              preferred_batch_size_in_kilobytes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.preferredBatchSizeInKilobytes',
                type: {
                  name: 'Number'
                }
              },
              azure_active_directory_tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureActiveDirectoryTenantId',
                type: {
                  name: 'String'
                }
              },
              azure_active_directory_application_id_or_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureActiveDirectoryApplicationIdOrUri',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
