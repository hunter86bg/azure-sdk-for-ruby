# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Information on the client (user or application) that made some action
    #
    class ClientInfo

      include MsRestAzure

      # @return [String] The email of the client.
      attr_accessor :email

      # @return [String] The name of the client.
      attr_accessor :name

      # @return The object id of the client.
      attr_accessor :object_id

      # @return [String] The user principal name of the client.
      attr_accessor :user_principal_name


      #
      # Mapper for ClientInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClientInfo',
          type: {
            name: 'Composite',
            class_name: 'ClientInfo',
            model_properties: {
              email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
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
              user_principal_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userPrincipalName',
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