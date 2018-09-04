=begin
#AI Mastering API

#This is a AI Mastering API document. You can use the mastering feature of [AI Mastering](https://aimastering.com) through this API.

OpenAPI spec version: 1.0.0
Contact: aimasteringcom@gmail.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Aimastering
  class PaymentCustomerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get a default payment customer.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<PaymentCustomer>]
    def get_default_payment_customer(opts = {})
      data, _status_code, _headers = get_default_payment_customer_with_http_info(opts)
      return data
    end

    # Get a default payment customer.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PaymentCustomer>, Fixnum, Hash)>] Array<PaymentCustomer> data, response status code and response headers
    def get_default_payment_customer_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentCustomerApi.get_default_payment_customer ..."
      end
      # resource path
      local_var_path = "/payment_customers/default"

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
        :return_type => 'Array<PaymentCustomer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentCustomerApi#get_default_payment_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
