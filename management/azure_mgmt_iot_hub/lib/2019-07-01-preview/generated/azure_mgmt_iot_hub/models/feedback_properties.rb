# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_07_01_preview
  module Models
    #
    # The properties of the feedback queue for cloud-to-device messages.
    #
    class FeedbackProperties

      include MsRestAzure

      # @return [Duration] The lock duration for the feedback queue. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
      attr_accessor :lock_duration_as_iso8601

      # @return [Duration] The period of time for which a message is available
      # to consume before it is expired by the IoT hub. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
      attr_accessor :ttl_as_iso8601

      # @return [Integer] The number of times the IoT hub attempts to deliver a
      # message on the feedback queue. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages.
      attr_accessor :max_delivery_count


      #
      # Mapper for FeedbackProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FeedbackProperties',
          type: {
            name: 'Composite',
            class_name: 'FeedbackProperties',
            model_properties: {
              lock_duration_as_iso8601: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lockDurationAsIso8601',
                type: {
                  name: 'TimeSpan'
                }
              },
              ttl_as_iso8601: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ttlAsIso8601',
                type: {
                  name: 'TimeSpan'
                }
              },
              max_delivery_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxDeliveryCount',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 1
                },
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
