# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # A workspace key
    #
    class Key < ProxyResource

      include MsRestAzure

      # @return [Boolean] Used to activate the workspace after a customer
      # managed key is provided.
      attr_accessor :is_active_cmk

      # @return [String] The Key Vault Url of the workspace key.
      attr_accessor :key_vault_url


      #
      # Mapper for Key class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Key',
          type: {
            name: 'Composite',
            class_name: 'Key',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              is_active_cmk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isActiveCMK',
                type: {
                  name: 'Boolean'
                }
              },
              key_vault_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultUrl',
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
