# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2015_05_01
  module Models
    #
    # An Application Insights workbook definition.
    #
    class Workbook < WorkbookResource

      include MsRestAzure

      # @return [SharedTypeKind] The kind of workbook. Choices are user and
      # shared. Possible values include: 'user', 'shared'
      attr_accessor :kind

      # @return [String] The user-defined name of the workbook.
      attr_accessor :workbook_name

      # @return [String] Configuration of this particular workbook.
      # Configuration data is a string containing valid JSON
      attr_accessor :serialized_data

      # @return [String] This instance's version of the data model. This can
      # change as new features are added that can be marked workbook.
      attr_accessor :version

      # @return [String] Internally assigned unique id of the workbook
      # definition.
      attr_accessor :workbook_id

      # @return [SharedTypeKind] Enum indicating if this workbook definition is
      # owned by a specific user or is shared between all users with access to
      # the Application Insights component. Possible values include: 'user',
      # 'shared'. Default value: 'shared' .
      attr_accessor :shared_type_kind

      # @return [String] Date and time in UTC of the last modification that was
      # made to this workbook definition.
      attr_accessor :time_modified

      # @return [String] Workbook category, as defined by the user at creation
      # time.
      attr_accessor :category

      # @return [Array<String>] A list of 0 or more tags that are associated
      # with this workbook definition
      attr_accessor :workbook_tags

      # @return [String] Unique user id of the specific user that owns this
      # workbook.
      attr_accessor :user_id

      # @return [String] Optional resourceId for a source resource.
      attr_accessor :source_resource_id


      #
      # Mapper for Workbook class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Workbook',
          type: {
            name: 'Composite',
            class_name: 'Workbook',
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
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              workbook_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              serialized_data: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.serializedData',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.version',
                type: {
                  name: 'String'
                }
              },
              workbook_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.workbookId',
                type: {
                  name: 'String'
                }
              },
              shared_type_kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.kind',
                default_value: 'shared',
                type: {
                  name: 'String'
                }
              },
              time_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.timeModified',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.category',
                type: {
                  name: 'String'
                }
              },
              workbook_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tags',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              user_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.userId',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sourceResourceId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end