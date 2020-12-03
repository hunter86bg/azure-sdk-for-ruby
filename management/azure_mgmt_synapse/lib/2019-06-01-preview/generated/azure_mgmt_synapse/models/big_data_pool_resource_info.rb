# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Big Data pool

    # A Big Data pool
    #
    class BigDataPoolResourceInfo < TrackedResource

      include MsRestAzure

      # @return [String] The state of the Big Data pool.
      attr_accessor :provisioning_state

      # @return [AutoScaleProperties] Auto-scaling properties
      attr_accessor :auto_scale

      # @return [DateTime] The time when the Big Data pool was created.
      attr_accessor :creation_date

      # @return [AutoPauseProperties] Auto-pausing properties
      attr_accessor :auto_pause

      # @return [Boolean] Whether compute isolation is required or not.
      attr_accessor :is_compute_isolation_enabled

      # @return [Boolean] Whether library requirements changed.
      attr_accessor :have_library_requirements_changed

      # @return [Boolean] Whether session level packages enabled.
      attr_accessor :session_level_packages_enabled

      # @return [String] The Spark events folder
      attr_accessor :spark_events_folder

      # @return [Integer] The number of nodes in the Big Data pool.
      attr_accessor :node_count

      # @return [LibraryRequirements] Library version requirements
      attr_accessor :library_requirements

      # @return [LibraryRequirements] Spark configuration file to specify
      # additional properties
      attr_accessor :spark_config_properties

      # @return [String] The Apache Spark version.
      attr_accessor :spark_version

      # @return [String] The default folder where Spark logs will be written.
      attr_accessor :default_spark_log_folder

      # @return [NodeSize] The level of compute power that each node in the Big
      # Data pool has. Possible values include: 'None', 'Small', 'Medium',
      # 'Large', 'XLarge', 'XXLarge', 'XXXLarge'
      attr_accessor :node_size

      # @return [NodeSizeFamily] The kind of nodes that the Big Data pool
      # provides. Possible values include: 'None', 'MemoryOptimized'
      attr_accessor :node_size_family


      #
      # Mapper for BigDataPoolResourceInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BigDataPoolResourceInfo',
          type: {
            name: 'Composite',
            class_name: 'BigDataPoolResourceInfo',
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
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              auto_scale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoScale',
                type: {
                  name: 'Composite',
                  class_name: 'AutoScaleProperties'
                }
              },
              creation_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              auto_pause: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoPause',
                type: {
                  name: 'Composite',
                  class_name: 'AutoPauseProperties'
                }
              },
              is_compute_isolation_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isComputeIsolationEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              have_library_requirements_changed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.haveLibraryRequirementsChanged',
                type: {
                  name: 'Boolean'
                }
              },
              session_level_packages_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sessionLevelPackagesEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              spark_events_folder: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sparkEventsFolder',
                type: {
                  name: 'String'
                }
              },
              node_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeCount',
                type: {
                  name: 'Number'
                }
              },
              library_requirements: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.libraryRequirements',
                type: {
                  name: 'Composite',
                  class_name: 'LibraryRequirements'
                }
              },
              spark_config_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sparkConfigProperties',
                type: {
                  name: 'Composite',
                  class_name: 'LibraryRequirements'
                }
              },
              spark_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sparkVersion',
                type: {
                  name: 'String'
                }
              },
              default_spark_log_folder: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultSparkLogFolder',
                type: {
                  name: 'String'
                }
              },
              node_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeSize',
                type: {
                  name: 'String'
                }
              },
              node_size_family: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeSizeFamily',
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
