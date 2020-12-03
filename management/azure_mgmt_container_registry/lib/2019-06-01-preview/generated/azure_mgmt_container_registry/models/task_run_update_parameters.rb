# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The parameters for updating a task run.
    #
    class TaskRunUpdateParameters

      include MsRestAzure

      # @return [IdentityProperties] Identity for the resource.
      attr_accessor :identity

      # @return [RunRequest] The request (parameters) for the new run
      attr_accessor :run_request

      # @return [String] How the run should be forced to rerun even if the run
      # request configuration has not changed
      attr_accessor :force_update_tag

      # @return [String] The location of the resource
      attr_accessor :location

      # @return [Hash{String => String}] The ARM resource tags.
      attr_accessor :tags


      #
      # Mapper for TaskRunUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TaskRunUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'TaskRunUpdateParameters',
            model_properties: {
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'IdentityProperties'
                }
              },
              run_request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runRequest',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'RunRequest',
                  class_name: 'RunRequest'
                }
              },
              force_update_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.forceUpdateTag',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
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
              }
            }
          }
        }
      end
    end
  end
end
