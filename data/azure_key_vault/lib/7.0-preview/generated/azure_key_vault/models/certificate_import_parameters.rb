# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::KeyVault::V7_0_preview
  module Models
    #
    # The certificate import parameters.
    #
    class CertificateImportParameters

      include MsRestAzure

      # @return [String] Base64 encoded representation of the certificate
      # object to import. This certificate needs to contain the private key.
      attr_accessor :base64encoded_certificate

      # @return [String] If the private key in base64encoded_certificate is
      # encrypted, the password used for encryption.
      attr_accessor :password

      # @return [CertificatePolicy] The management policy for the certificate.
      attr_accessor :certificate_policy

      # @return [CertificateAttributes] The attributes of the certificate
      # (optional).
      attr_accessor :certificate_attributes

      # @return [Hash{String => String}] Application specific metadata in the
      # form of key-value pairs.
      attr_accessor :tags


      #
      # Mapper for CertificateImportParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateImportParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateImportParameters',
            model_properties: {
              base64encoded_certificate: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pwd',
                type: {
                  name: 'String'
                }
              },
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
