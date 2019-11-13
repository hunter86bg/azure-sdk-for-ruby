# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # Represents Custom price showback rule model
    #
    class CustomPriceDetailsKind < ShowbackRuleProperties

      include MsRestAzure


      def initialize
        @ruleType = "CustomPrice"
      end

      attr_accessor :ruleType

      # @return [String]
      attr_accessor :pricesheet

      # @return [Array<FunctionType>] Array of benefits.
      attr_accessor :benefits

      # @return [Array<Markup>] List of markups.
      attr_accessor :markups


      #
      # Mapper for CustomPriceDetailsKind class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomPrice',
          type: {
            name: 'Composite',
            class_name: 'CustomPriceDetailsKind',
            model_properties: {
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'version',
                type: {
                  name: 'Number'
                }
              },
              scopes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scopes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ScopeElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Scope'
                      }
                  }
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              deprecation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'deprecationTime',
                type: {
                  name: 'DateTime'
                }
              },
              modification_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'modificationTime',
                type: {
                  name: 'DateTime'
                }
              },
              ruleType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ruleType',
                type: {
                  name: 'String'
                }
              },
              pricesheet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details.pricesheet',
                type: {
                  name: 'String'
                }
              },
              benefits: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details.benefits',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FunctionTypeElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              markups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details.markups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MarkupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Markup'
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