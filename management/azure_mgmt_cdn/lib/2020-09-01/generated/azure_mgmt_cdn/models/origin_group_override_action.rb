# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_09_01
  module Models
    #
    # Defines the origin group override action for the delivery rule.
    #
    class OriginGroupOverrideAction < DeliveryRuleAction

      include MsRestAzure


      def initialize
        @name = "OriginGroupOverride"
      end

      attr_accessor :name

      # @return [OriginGroupOverrideActionParameters] Defines the parameters
      # for the action.
      attr_accessor :parameters


      #
      # Mapper for OriginGroupOverrideAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OriginGroupOverride',
          type: {
            name: 'Composite',
            class_name: 'OriginGroupOverrideAction',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'OriginGroupOverrideActionParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end