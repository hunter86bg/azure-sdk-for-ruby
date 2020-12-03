# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity Azure Databricks Delta Lake sink.
    #
    class AzureDatabricksDeltaLakeSink < CopySink

      include MsRestAzure


      def initialize
        @type = "AzureDatabricksDeltaLakeSink"
      end

      attr_accessor :type

      # @return SQL pre-copy script. Type: string (or Expression with
      # resultType string).
      attr_accessor :pre_copy_script

      # @return [AzureDatabricksDeltaLakeImportCommand] Azure Databricks Delta
      # Lake import settings.
      attr_accessor :import_settings


      #
      # Mapper for AzureDatabricksDeltaLakeSink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureDatabricksDeltaLakeSink',
          type: {
            name: 'Composite',
            class_name: 'AzureDatabricksDeltaLakeSink',
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
              write_batch_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchSize',
                type: {
                  name: 'Object'
                }
              },
              write_batch_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'writeBatchTimeout',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryCount',
                type: {
                  name: 'Object'
                }
              },
              sink_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sinkRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              pre_copy_script: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preCopyScript',
                type: {
                  name: 'Object'
                }
              },
              import_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'importSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AzureDatabricksDeltaLakeImportCommand'
                }
              }
            }
          }
        }
      end
    end
  end
end
