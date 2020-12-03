# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::Mgmt::V2019_09_01
  module Models
    #
    # A set of rules governing the network accessibility of a vault.
    #
    class NetworkRuleSet

      include MsRestAzure

      # @return [NetworkRuleBypassOptions] Tells what traffic can bypass
      # network rules. This can be 'AzureServices' or 'None'.  If not specified
      # the default is 'AzureServices'. Possible values include:
      # 'AzureServices', 'None'
      attr_accessor :bypass

      # @return [NetworkRuleAction] The default action when no rule from
      # ipRules and from virtualNetworkRules match. This is only used after the
      # bypass property has been evaluated. Possible values include: 'Allow',
      # 'Deny'
      attr_accessor :default_action

      # @return [Array<IPRule>] The list of IP address rules.
      attr_accessor :ip_rules

      # @return [Array<VirtualNetworkRule>] The list of virtual network rules.
      attr_accessor :virtual_network_rules


      #
      # Mapper for NetworkRuleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkRuleSet',
          type: {
            name: 'Composite',
            class_name: 'NetworkRuleSet',
            model_properties: {
              bypass: {
                client_side_validation: true,
                required: false,
                serialized_name: 'bypass',
                type: {
                  name: 'String'
                }
              },
              default_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultAction',
                type: {
                  name: 'String'
                }
              },
              ip_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IPRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IPRule'
                      }
                  }
                }
              },
              virtual_network_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualNetworkRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetworkRule'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
