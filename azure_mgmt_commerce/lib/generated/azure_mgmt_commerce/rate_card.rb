# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Commerce
  #
  # RateCard
  #
  class RateCard
    include Azure::ARM::Commerce::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the RateCard class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [UsageManagementClient] reference to the UsageManagementClient
    attr_reader :client

    #
    # Enables you to query for the resource/meter metadata and related prices used
    # in a given subscription by Offer ID, Currency, Locale and Region. The
    # metadata associated with the billing meters, including but not limited to
    # service names, types, resources, units of measure, and regions, is subject
    # to change at any time and without notice. If you intend to use this billing
    # data in an automated fashion, please use the billing meter GUID to uniquely
    # identify each billable item. If the billing meter GUID is scheduled to
    # change due to a new billing model, you will be notified in advance of the
    # change.
    #
    # @param filter [String] The filter to apply on the operation. It ONLY
    # supports the 'eq' and 'and' logical operators at this time. All the 4 query
    # parameters 'OfferDurableId',  'Currency', 'Locale', 'Region' are required
    # to be a part of the $filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ResourceRateCardInfo] operation results.
    #
    def get(filter = nil, custom_headers = nil)
      response = get_async(filter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Enables you to query for the resource/meter metadata and related prices used
    # in a given subscription by Offer ID, Currency, Locale and Region. The
    # metadata associated with the billing meters, including but not limited to
    # service names, types, resources, units of measure, and regions, is subject
    # to change at any time and without notice. If you intend to use this billing
    # data in an automated fashion, please use the billing meter GUID to uniquely
    # identify each billable item. If the billing meter GUID is scheduled to
    # change due to a new billing model, you will be notified in advance of the
    # change.
    #
    # @param filter [String] The filter to apply on the operation. It ONLY
    # supports the 'eq' and 'and' logical operators at this time. All the 4 query
    # parameters 'OfferDurableId',  'Currency', 'Locale', 'Region' are required
    # to be a part of the $filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(filter = nil, custom_headers = nil)
      get_async(filter, custom_headers).value!
    end

    #
    # Enables you to query for the resource/meter metadata and related prices used
    # in a given subscription by Offer ID, Currency, Locale and Region. The
    # metadata associated with the billing meters, including but not limited to
    # service names, types, resources, units of measure, and regions, is subject
    # to change at any time and without notice. If you intend to use this billing
    # data in an automated fashion, please use the billing meter GUID to uniquely
    # identify each billable item. If the billing meter GUID is scheduled to
    # change due to a new billing model, you will be notified in advance of the
    # change.
    #
    # @param filter [String] The filter to apply on the operation. It ONLY
    # supports the 'eq' and 'and' logical operators at this time. All the 4 query
    # parameters 'OfferDurableId',  'Currency', 'Locale', 'Region' are required
    # to be a part of the $filter.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/providers/Microsoft.Commerce/RateCard'
      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {})
      }

      request_url = @base_url || @client.base_url

      request = MsRest::HttpOperationRequest.new(request_url, path_template, :get, options)
      promise = request.run_promise do |req|
        @client.credentials.sign_request(req) unless @client.credentials.nil?
      end

      promise = promise.then do |http_response|
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(request, http_response, error_model)
        end

        # Create Result
        result = MsRestAzure::AzureOperationResponse.new(request, http_response)
        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ResourceRateCardInfo.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
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