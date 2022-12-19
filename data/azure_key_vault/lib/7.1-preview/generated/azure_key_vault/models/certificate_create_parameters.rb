# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_1_preview
  module Models
    #
    # The certificate create parameters.
    #
    class CertificateCreateParameters

      include MsRestAzure

      # @return [CertificatePolicy] The management policy for the certificate.
      attr_accessor :certificate_policy

      # @return [CertificateAttributes] The attributes of the certificate
      # (optional).
      attr_accessor :certificate_attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for CertificateCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateCreateParameters',
            model_properties: {
              certificate_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'CertificatePolicy'
                }
              },
              certificate_attributes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateAttributes'
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