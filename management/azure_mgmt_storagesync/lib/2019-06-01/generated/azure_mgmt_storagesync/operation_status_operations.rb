# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_06_01
  #
  # Microsoft Storage Sync Service API
  #
  class OperationStatusOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the OperationStatusOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorageSyncManagementClient] reference to the StorageSyncManagementClient
    attr_reader :client

    #
    # Get Operation status
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param location_name [String] The desired region to obtain information from.
    # @param workflow_id [String] workflow Id
    # @param operation_id [String] operation Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def get(resource_group_name, location_name, workflow_id, operation_id, custom_headers:nil)
      response = get_async(resource_group_name, location_name, workflow_id, operation_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get Operation status
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param location_name [String] The desired region to obtain information from.
    # @param workflow_id [String] workflow Id
    # @param operation_id [String] operation Id
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, location_name, workflow_id, operation_id, custom_headers:nil)
      get_async(resource_group_name, location_name, workflow_id, operation_id, custom_headers:custom_headers).value!
    end

    #
    # Get Operation status
    #
    # @param resource_group_name [String] The name of the resource group. The name
    # is case insensitive.
    # @param location_name [String] The desired region to obtain information from.
    # @param workflow_id [String] workflow Id
    # @param operation_id [String] operation Id
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, location_name, workflow_id, operation_id, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'MinLength': '1'" if !@client.subscription_id.nil? && @client.subscription_id.length < 1
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, "'@client.api_version' should satisfy the constraint - 'MinLength': '1'" if !@client.api_version.nil? && @client.api_version.length < 1
      fail ArgumentError, 'location_name is nil' if location_name.nil?
      fail ArgumentError, 'workflow_id is nil' if workflow_id.nil?
      fail ArgumentError, 'operation_id is nil' if operation_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.StorageSync/locations/{locationName}/workflows/{workflowId}/operations/{operationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'locationName' => location_name,'workflowId' => workflow_id,'operationId' => operation_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::StorageSync::Mgmt::V2019_06_01::Models::OperationStatus.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
