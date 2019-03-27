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
  class UserApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get self user.
    # 
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_self(opts = {})
      data, _status_code, _headers = get_self_with_http_info(opts)
      return data
    end

    # Get self user.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def get_self_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.get_self ..."
      end
      # resource path
      local_var_path = "/users/self"

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#get_self\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Notify user is registered.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :affiliate_id The affiliate id of inviter.
    # @option opts [String] :referrer_url The referrer URL.
    # @return [User]
    def notify_registration(opts = {})
      data, _status_code, _headers = notify_registration_with_http_info(opts)
      return data
    end

    # Notify user is registered.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :affiliate_id The affiliate id of inviter.
    # @option opts [String] :referrer_url The referrer URL.
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def notify_registration_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.notify_registration ..."
      end
      # resource path
      local_var_path = "/users/self/notify_registration"

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
      form_params["affiliate_id"] = opts[:'affiliate_id'] if !opts[:'affiliate_id'].nil?
      form_params["referrer_url"] = opts[:'referrer_url'] if !opts[:'referrer_url'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#notify_registration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send invitation.
    # 
    # @param invitee_email The email of invitee.
    # @param [Hash] opts the optional parameters
    # @return [User]
    def send_invitation(invitee_email, opts = {})
      data, _status_code, _headers = send_invitation_with_http_info(invitee_email, opts)
      return data
    end

    # Send invitation.
    # 
    # @param invitee_email The email of invitee.
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def send_invitation_with_http_info(invitee_email, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.send_invitation ..."
      end
      # verify the required parameter 'invitee_email' is set
      if @api_client.config.client_side_validation && invitee_email.nil?
        fail ArgumentError, "Missing the required parameter 'invitee_email' when calling UserApi.send_invitation"
      end
      # resource path
      local_var_path = "/users/self/send_invitation"

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
      form_params["invitee_email"] = invitee_email

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#send_invitation\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update self user.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :agreed_terms_of_service Whether you agreed terms of service.
    # @option opts [String] :email The email.
    # @return [User]
    def update_self(opts = {})
      data, _status_code, _headers = update_self_with_http_info(opts)
      return data
    end

    # Update self user.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :agreed_terms_of_service Whether you agreed terms of service.
    # @option opts [String] :email The email.
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def update_self_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: UserApi.update_self ..."
      end
      # resource path
      local_var_path = "/users/self"

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
      form_params["agreed_terms_of_service"] = opts[:'agreed_terms_of_service'] if !opts[:'agreed_terms_of_service'].nil?
      form_params["email"] = opts[:'email'] if !opts[:'email'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UserApi#update_self\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end