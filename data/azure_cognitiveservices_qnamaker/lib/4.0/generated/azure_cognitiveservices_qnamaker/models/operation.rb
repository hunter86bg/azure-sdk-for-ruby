# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # Record to track long running operation.
    #
    class Operation

      include MsRestAzure

      # @return [OperationStateType] Operation state. Possible values include:
      # 'Failed', 'NotStarted', 'Running', 'Succeeded'
      attr_accessor :operation_state

      # @return [String] Timestamp when the operation was created.
      attr_accessor :created_timestamp

      # @return [String] Timestamp when the current state was entered.
      attr_accessor :last_action_timestamp

      # @return [String] Relative URI to the target resource location for
      # completed resources.
      attr_accessor :resource_location

      # @return [String] User Id
      attr_accessor :user_id

      # @return [String] Operation Id.
      attr_accessor :operation_id

      # @return [ErrorResponse] Error details in case of failures.
      attr_accessor :error_response


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              operation_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operationState',
                type: {
                  name: 'String'
                }
              },
              created_timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'createdTimestamp',
                type: {
                  name: 'String'
                }
              },
              last_action_timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastActionTimestamp',
                type: {
                  name: 'String'
                }
              },
              resource_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceLocation',
                type: {
                  name: 'String'
                }
              },
              user_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userId',
                type: {
                  name: 'String'
                }
              },
              operation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operationId',
                type: {
                  name: 'String'
                }
              },
              error_response: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorResponse',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorResponse'
                }
              }
            }
          }
        }
      end
    end
  end
end