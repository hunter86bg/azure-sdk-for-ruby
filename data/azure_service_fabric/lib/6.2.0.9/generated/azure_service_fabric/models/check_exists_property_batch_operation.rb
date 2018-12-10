# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents a PropertyBatchOperation that compares the Boolean existence
    # of a property with the Exists argument.
    # The PropertyBatchOperation operation fails if the property's existence is
    # not equal to the Exists argument.
    # The CheckExistsPropertyBatchOperation is generally used as a precondition
    # for the write operations in the batch.
    # Note that if one PropertyBatchOperation in a PropertyBatch fails,
    # the entire batch fails and cannot be committed in a transactional manner.
    #
    class CheckExistsPropertyBatchOperation < PropertyBatchOperation

      include MsRestAzure


      def initialize
        @Kind = "CheckExists"
      end

      attr_accessor :Kind

      # @return [Boolean] Whether or not the property should exist for the
      # operation to pass.
      attr_accessor :exists


      #
      # Mapper for CheckExistsPropertyBatchOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckExists',
          type: {
            name: 'Composite',
            class_name: 'CheckExistsPropertyBatchOperation',
            model_properties: {
              property_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PropertyName',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              exists: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Exists',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end