# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_2_preview
  module Models
    #
    # Role assignment properties with scope.
    #
    class RoleAssignmentPropertiesWithScope

      include MsRestAzure

      # @return [RoleScope] Possible values include: 'Global', 'Keys'
      attr_accessor :scope

      # @return [String] The role definition ID.
      attr_accessor :role_definition_id

      # @return [String] The principal ID.
      attr_accessor :principal_id


      #
      # Mapper for RoleAssignmentPropertiesWithScope class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleAssignmentPropertiesWithScope',
          type: {
            name: 'Composite',
            class_name: 'RoleAssignmentPropertiesWithScope',
            model_properties: {
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scope',
                type: {
                  name: 'String'
                }
              },
              role_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'roleDefinitionId',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'principalId',
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