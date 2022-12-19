# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_08_06_preview
  module Models
    #
    # Contains all Sensor binary downloads
    #
    class PackageDownloadsSensor

      include MsRestAzure

      # @return [PackageDownloadsSensorFull] Contains full package downloads
      attr_accessor :full

      # @return [Array<PackageDownloadInfo>] Sensor upgrade package downloads
      # (on existing installations)
      attr_accessor :upgrade


      #
      # Mapper for PackageDownloadsSensor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PackageDownloads_sensor',
          type: {
            name: 'Composite',
            class_name: 'PackageDownloadsSensor',
            model_properties: {
              full: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'full',
                type: {
                  name: 'Composite',
                  class_name: 'PackageDownloadsSensorFull'
                }
              },
              upgrade: {
                client_side_validation: true,
                required: false,
                serialized_name: 'upgrade',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PackageDownloadInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PackageDownloadInfo'
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