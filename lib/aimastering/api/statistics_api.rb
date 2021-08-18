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
  class StatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get group buy statistics.
    # 
    # @param [Hash] opts the optional parameters
    # @return [GroupBuyStatistics]
    def get_group_buy_statistics(opts = {})
      data, _status_code, _headers = get_group_buy_statistics_with_http_info(opts)
      return data
    end

    # Get group buy statistics.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GroupBuyStatistics, Fixnum, Hash)>] GroupBuyStatistics data, response status code and response headers
    def get_group_buy_statistics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatisticsApi.get_group_buy_statistics ..."
      end
      # resource path
      local_var_path = "/statistics/group_buy"

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
        :return_type => 'GroupBuyStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#get_group_buy_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get anonymized masterings.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<AnonymizedMastering>]
    def list_anonymized_masterings(opts = {})
      data, _status_code, _headers = list_anonymized_masterings_with_http_info(opts)
      return data
    end

    # Get anonymized masterings.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AnonymizedMastering>, Fixnum, Hash)>] Array<AnonymizedMastering> data, response status code and response headers
    def list_anonymized_masterings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatisticsApi.list_anonymized_masterings ..."
      end
      # resource path
      local_var_path = "/statistics/anonymized_masterings"

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
        :return_type => 'Array<AnonymizedMastering>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#list_anonymized_masterings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get KPIs.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Kpi]
    def list_kpis(opts = {})
      data, _status_code, _headers = list_kpis_with_http_info(opts)
      return data
    end

    # Get KPIs.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Kpi, Fixnum, Hash)>] Kpi data, response status code and response headers
    def list_kpis_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StatisticsApi.list_kpis ..."
      end
      # resource path
      local_var_path = "/statistics/kpis"

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
        :return_type => 'Kpi')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StatisticsApi#list_kpis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
