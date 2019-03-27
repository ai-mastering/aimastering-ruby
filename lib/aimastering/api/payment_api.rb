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
  class PaymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new payment.
    # 
    # @param product_token This parameter represents the product token.
    # @param service This parameter represents the payment message.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :token This parameter represents the card token. This parameter is effective only when the service is \&quot;stripe\&quot;.
    # @return [Payment]
    def create_payment(product_token, service, opts = {})
      data, _status_code, _headers = create_payment_with_http_info(product_token, service, opts)
      return data
    end

    # Create a new payment.
    # 
    # @param product_token This parameter represents the product token.
    # @param service This parameter represents the payment message.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :token This parameter represents the card token. This parameter is effective only when the service is \&quot;stripe\&quot;.
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def create_payment_with_http_info(product_token, service, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.create_payment ..."
      end
      # verify the required parameter 'product_token' is set
      if @api_client.config.client_side_validation && product_token.nil?
        fail ArgumentError, "Missing the required parameter 'product_token' when calling PaymentApi.create_payment"
      end
      # verify the required parameter 'service' is set
      if @api_client.config.client_side_validation && service.nil?
        fail ArgumentError, "Missing the required parameter 'service' when calling PaymentApi.create_payment"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['paypal', 'stripe'].include?(service)
        fail ArgumentError, "invalid value for 'service', must be one of paypal, stripe"
      end
      # resource path
      local_var_path = "/payments"

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
      form_params["product_token"] = product_token
      form_params["service"] = service
      form_params["token"] = opts[:'token'] if !opts[:'token'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#create_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute a payment by id.
    # 
    # @param id Payment id
    # @param payer_id This parameter represents the card token. This parameter is effective only when the service is \&quot;paypal\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def execute_payment(id, payer_id, opts = {})
      data, _status_code, _headers = execute_payment_with_http_info(id, payer_id, opts)
      return data
    end

    # Execute a payment by id.
    # 
    # @param id Payment id
    # @param payer_id This parameter represents the card token. This parameter is effective only when the service is \&quot;paypal\&quot;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def execute_payment_with_http_info(id, payer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.execute_payment ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentApi.execute_payment"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling PaymentApi.execute_payment, must be greater than or equal to 1.'
      end

      # verify the required parameter 'payer_id' is set
      if @api_client.config.client_side_validation && payer_id.nil?
        fail ArgumentError, "Missing the required parameter 'payer_id' when calling PaymentApi.execute_payment"
      end
      # resource path
      local_var_path = "/payments/{id}/execute".sub('{' + 'id' + '}', id.to_s)

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
      form_params["payer_id"] = payer_id

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#execute_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a payment by id.
    # 
    # @param id Payment id
    # @param [Hash] opts the optional parameters
    # @return [Payment]
    def get_payment(id, opts = {})
      data, _status_code, _headers = get_payment_with_http_info(id, opts)
      return data
    end

    # Get a payment by id.
    # 
    # @param id Payment id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Payment, Fixnum, Hash)>] Payment data, response status code and response headers
    def get_payment_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.get_payment ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PaymentApi.get_payment"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling PaymentApi.get_payment, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/payments/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Payment')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#get_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all accessable payments.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<Payment>]
    def list_payments(opts = {})
      data, _status_code, _headers = list_payments_with_http_info(opts)
      return data
    end

    # Get all accessable payments.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Payment>, Fixnum, Hash)>] Array<Payment> data, response status code and response headers
    def list_payments_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PaymentApi.list_payments ..."
      end
      # resource path
      local_var_path = "/payments"

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
        :return_type => 'Array<Payment>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#list_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
