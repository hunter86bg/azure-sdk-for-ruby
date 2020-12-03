# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01_preview
  module Models
    #
    # The parameters for updating a token.
    #
    class TokenUpdateParameters

      include MsRestAzure

      # @return [String] The resource ID of the scope map to which the token
      # will be associated with.
      attr_accessor :scope_map_id

      # @return [TokenStatus] The status of the token example enabled or
      # disabled. Possible values include: 'enabled', 'disabled'
      attr_accessor :status

      # @return [TokenCredentialsProperties] The credentials that can be used
      # for authenticating the token.
      attr_accessor :credentials


      #
      # Mapper for TokenUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TokenUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'TokenUpdateParameters',
            model_properties: {
              scope_map_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scopeMapId',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.credentials',
                type: {
                  name: 'Composite',
                  class_name: 'TokenCredentialsProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
