# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Used for getting ResourceHealthCheck settings.
    #
    class ResourceHealthMetadata < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] ARM Resource Id
      attr_accessor :resource_health_metadata_id

      # @return [String] The category that the resource matches in the RHC
      # Policy File
      attr_accessor :category

      # @return [Boolean] Is there a health signal for the resource
      attr_accessor :signal_availability


      #
      # Mapper for ResourceHealthMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResourceHealthMetadata',
          type: {
            name: 'Composite',
            class_name: 'ResourceHealthMetadata',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              resource_health_metadata_id: {
                required: false,
                serialized_name: 'properties.id',
                type: {
                  name: 'String'
                }
              },
              category: {
                required: false,
                serialized_name: 'properties.category',
                type: {
                  name: 'String'
                }
              },
              signal_availability: {
                required: false,
                serialized_name: 'properties.signalAvailability',
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