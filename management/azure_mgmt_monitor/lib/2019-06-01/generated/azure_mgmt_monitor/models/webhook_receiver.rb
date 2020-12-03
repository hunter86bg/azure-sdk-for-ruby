# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2019_06_01
  module Models
    #
    # A webhook receiver.
    #
    class WebhookReceiver

      include MsRestAzure

      # @return [String] The name of the webhook receiver. Names must be unique
      # across all receivers within an action group.
      attr_accessor :name

      # @return [String] The URI where webhooks should be sent.
      attr_accessor :service_uri

      # @return [Boolean] Indicates whether to use common alert schema.
      attr_accessor :use_common_alert_schema

      # @return [Boolean] Indicates whether or not use AAD authentication.
      # Default value: false .
      attr_accessor :use_aad_auth

      # @return [String] Indicates the webhook app object Id for aad auth.
      attr_accessor :object_id

      # @return [String] Indicates the identifier uri for aad auth.
      attr_accessor :identifier_uri

      # @return [String] Indicates the tenant id for aad auth.
      attr_accessor :tenant_id


      #
      # Mapper for WebhookReceiver class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebhookReceiver',
          type: {
            name: 'Composite',
            class_name: 'WebhookReceiver',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              service_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'serviceUri',
                type: {
                  name: 'String'
                }
              },
              use_common_alert_schema: {
                client_side_validation: true,
                required: true,
                serialized_name: 'useCommonAlertSchema',
                type: {
                  name: 'Boolean'
                }
              },
              use_aad_auth: {
                client_side_validation: true,
                required: false,
                serialized_name: 'useAadAuth',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectId',
                type: {
                  name: 'String'
                }
              },
              identifier_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identifierUri',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
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
