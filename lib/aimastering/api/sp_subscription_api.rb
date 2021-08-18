=begin
#AI Mastering API

#This is a AI Mastering API document. You can use the mastering feature of [AI Mastering](https://aimastering.com) through this API.

OpenAPI spec version: 1.0.0
Contact: info@bakuage.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Aimastering
  class SpSubscriptionApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new smartphone subscription.
    # 
    # @param service Service.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :receipt Base64 encoded app store receipt. This parameter is effective only when the service is \&quot;appstore\&quot;.
    # @return [SpSubscription]
    def create_sp_subscription(service, opts = {})
      data, _status_code, _headers = create_sp_subscription_with_http_info(service, opts)
      return data
    end

    # Create a new smartphone subscription.
    # 
    # @param service Service.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :receipt Base64 encoded app store receipt. This parameter is effective only when the service is \&quot;appstore\&quot;.
    # @return [Array<(SpSubscription, Fixnum, Hash)>] SpSubscription data, response status code and response headers
    def create_sp_subscription_with_http_info(service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SpSubscriptionApi.create_sp_subscription ..."
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling SpSubscriptionApi.create_sp_subscription"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['appstore'].include?(service)
        fail ArgumentError, "invalid value for 'service', must be one of appstore"
      end
      # resource path
      local_var_path = "/sp_subscriptions"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["service"] = service
      form_params["receipt"] = opts[:'receipt'] if !opts[:'receipt'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SpSubscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpSubscriptionApi#create_sp_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all accessable smartphone subscriptions.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<SpSubscription>]
    def list_sp_subscriptions(opts = {})
      data, _status_code, _headers = list_sp_subscriptions_with_http_info(opts)
      return data
    end

    # Get all accessable smartphone subscriptions.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SpSubscription>, Fixnum, Hash)>] Array<SpSubscription> data, response status code and response headers
    def list_sp_subscriptions_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SpSubscriptionApi.list_sp_subscriptions ..."
      end
      # resource path
      local_var_path = "/sp_subscriptions"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SpSubscription>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SpSubscriptionApi#list_sp_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
