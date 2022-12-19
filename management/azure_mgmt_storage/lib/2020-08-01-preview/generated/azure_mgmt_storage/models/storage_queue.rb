# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2020_08_01_preview
  module Models
    #
    # Model object.
    #
    #
    class StorageQueue < Resource

      include MsRestAzure

      # @return [Hash{String => String}] A name-value pair that represents
      # queue metadata.
      attr_accessor :metadata

      # @return [Integer] Integer indicating an approximate number of messages
      # in the queue. This number is not lower than the actual number of
      # messages in the queue, but could be higher.
      attr_accessor :approximate_message_count


      #
      # Mapper for StorageQueue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageQueue',
          type: {
            name: 'Composite',
            class_name: 'StorageQueue',
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
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.metadata',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              approximate_message_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.approximateMessageCount',
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