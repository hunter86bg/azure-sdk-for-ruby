# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # Criterion to filter metrics.
    #
    class MetricCriteria < MultiMetricCriteria

      include MsRestAzure


      def initialize
        @criterionType = "StaticThresholdCriterion"
      end

      attr_accessor :criterionType

      # @return [Operator] the criteria operator. Possible values include:
      # 'Equals', 'NotEquals', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan',
      # 'LessThanOrEqual'
      attr_accessor :operator

      # @return [Float] the criteria threshold value that activates the alert.
      attr_accessor :threshold


      #
      # Mapper for MetricCriteria class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StaticThresholdCriterion',
          type: {
            name: 'Composite',
            class_name: 'MetricCriteria',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              metric_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'metricName',
                type: {
                  name: 'String'
                }
              },
              metric_namespace: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricNamespace',
                type: {
                  name: 'String'
                }
              },
              time_aggregation: {
                client_side_validation: true,
                required: true,
                serialized_name: 'timeAggregation',
                type: {
                  name: 'Object'
                }
              },
              dimensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dimensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricDimensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricDimension'
                      }
                  }
                }
              },
              skip_metric_validation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skipMetricValidation',
                type: {
                  name: 'Boolean'
                }
              },
              criterionType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'criterionType',
                type: {
                  name: 'String'
                }
              },
              operator: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operator',
                type: {
                  name: 'String'
                }
              },
              threshold: {
                client_side_validation: true,
                required: true,
                serialized_name: 'threshold',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
