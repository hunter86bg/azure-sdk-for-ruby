# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2020_06_01_preview
  module Models
    #
    # The List operation response, that contains the restorable SQL databases
    # and their properties.
    #
    class RestorableSqlDatabasesListResult

      include MsRestAzure

      # @return [Array<RestorableSqlDatabaseGetResult>] List of restorable SQL
      # databases and their properties.
      attr_accessor :value


      #
      # Mapper for RestorableSqlDatabasesListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorableSqlDatabasesListResult',
          type: {
            name: 'Composite',
            class_name: 'RestorableSqlDatabasesListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RestorableSqlDatabaseGetResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RestorableSqlDatabaseGetResult'
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