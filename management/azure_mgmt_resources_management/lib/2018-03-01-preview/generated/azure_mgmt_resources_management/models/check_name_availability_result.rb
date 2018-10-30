# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_03_01_preview
  module Models
    #
    # Describes the result of the request to check management group name
    # availability.
    #
    class CheckNameAvailabilityResult

      include MsRestAzure

      # @return [Boolean] Required. True indicates name is valid and available.
      # False indicates the name is invalid, unavailable, or both.
      attr_accessor :name_available

      # @return [Reason] Required if nameAvailable == false. Invalid indicates
      # the name provided does not match the resource provider's naming
      # requirements (incorrect length, unsupported characters, etc.)
      # AlreadyExists indicates that the name is already in use and is
      # therefore unavailable. Possible values include: 'Invalid',
      # 'AlreadyExists'
      attr_accessor :reason

      # @return [String] Required if nameAvailable == false. Localized. If
      # reason == invalid, provide the user with the reason why the given name
      # is invalid, and provide the resource naming requirements so that the
      # user can select a valid name. If reason == AlreadyExists, explain that
      # is already in use, and direct them to select a different name.
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityResult',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResult',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'Enum',
                  module: 'Reason'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
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