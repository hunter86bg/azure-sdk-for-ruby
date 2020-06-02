# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Represents a scaling mechanism for adding or removing named partitions of
    # a stateless service. Partition names are in the format '0','1''N-1'
    #
    class AddRemoveIncrementalNamedPartitionScalingMechanism < ScalingMechanismDescription

      include MsRestAzure


      def initialize
        @Kind = "AddRemoveIncrementalNamedPartition"
      end

      attr_accessor :Kind

      # @return [Integer] Minimum number of named partitions of the service.
      attr_accessor :min_partition_count

      # @return [Integer] Maximum number of named partitions of the service.
      attr_accessor :max_partition_count

      # @return [Integer] The number of instances to add or remove during a
      # scaling operation.
      attr_accessor :scale_increment


      #
      # Mapper for AddRemoveIncrementalNamedPartitionScalingMechanism class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AddRemoveIncrementalNamedPartition',
          type: {
            name: 'Composite',
            class_name: 'AddRemoveIncrementalNamedPartitionScalingMechanism',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              min_partition_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'MinPartitionCount',
                type: {
                  name: 'Number'
                }
              },
              max_partition_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'MaxPartitionCount',
                type: {
                  name: 'Number'
                }
              },
              scale_increment: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ScaleIncrement',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end