# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  module Models
    #
    # Expansion result metadata.
    #
    class ExpansionResultsMetadata

      include MsRestAzure

      # @return [Array<ExpansionResultAggregation>] Information of the
      # aggregated nodes in the expansion result.
      attr_accessor :aggregations


      #
      # Mapper for ExpansionResultsMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpansionResultsMetadata',
          type: {
            name: 'Composite',
            class_name: 'ExpansionResultsMetadata',
            model_properties: {
              aggregations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aggregations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpansionResultAggregationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpansionResultAggregation'
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