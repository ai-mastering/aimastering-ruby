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
  class AudioApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new audio.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The file to upload.
    # @return [Audio]
    def create_audio(opts = {})
      data, _status_code, _headers = create_audio_with_http_info(opts)
      return data
    end

    # Create a new audio.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [File] :file The file to upload.
    # @return [Array<(Audio, Fixnum, Hash)>] Audio data, response status code and response headers
    def create_audio_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AudioApi.create_audio ..."
      end
      # resource path
      local_var_path = "/audios"

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
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['bearer']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Audio')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#create_audio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download an audio data by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [String]
    def download_audio(id, opts = {})
      data, _status_code, _headers = download_audio_with_http_info(id, opts)
      return data
    end

    # Download an audio data by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def download_audio_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AudioApi.download_audio ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AudioApi.download_audio"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling AudioApi.download_audio, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/audios/{id}/download".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#download_audio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download an audio data by audio_download_token.
    # 
    # @param download_token Audio download token
    # @param [Hash] opts the optional parameters
    # @return [String]
    def download_audio_by_token(download_token, opts = {})
      data, _status_code, _headers = download_audio_by_token_with_http_info(download_token, opts)
      return data
    end

    # Download an audio data by audio_download_token.
    # 
    # @param download_token Audio download token
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def download_audio_by_token_with_http_info(download_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AudioApi.download_audio_by_token ..."
      end
      # verify the required parameter 'download_token' is set
      if @api_client.config.client_side_validation && download_token.nil?
        fail ArgumentError, "Missing the required parameter 'download_token' when calling AudioApi.download_audio_by_token"
      end
      # resource path
      local_var_path = "/audios/download_by_token"

      # query parameters
      query_params = {}
      query_params[:'download_token'] = download_token

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream'])

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
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#download_audio_by_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an audio by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [Audio]
    def get_audio(id, opts = {})
      data, _status_code, _headers = get_audio_with_http_info(id, opts)
      return data
    end

    # Get an audio by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Audio, Fixnum, Hash)>] Audio data, response status code and response headers
    def get_audio_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AudioApi.get_audio ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AudioApi.get_audio"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling AudioApi.get_audio, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/audios/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Audio')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#get_audio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an audio analysis by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [AudioAnalysis]
    def get_audio_analysis(id, opts = {})
      data, _status_code, _headers = get_audio_analysis_with_http_info(id, opts)
      return data
    end

    # Get an audio analysis by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [Array<(AudioAnalysis, Fixnum, Hash)>] AudioAnalysis data, response status code and response headers
    def get_audio_analysis_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AudioApi.get_audio_analysis ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AudioApi.get_audio_analysis"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling AudioApi.get_audio_analysis, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/audios/{id}/analysis".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'AudioAnalysis')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#get_audio_analysis\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an audio download token by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [AudioDownloadToken]
    def get_audio_download_token(id, opts = {})
      data, _status_code, _headers = get_audio_download_token_with_http_info(id, opts)
      return data
    end

    # Get an audio download token by id.
    # 
    # @param id Audio id
    # @param [Hash] opts the optional parameters
    # @return [Array<(AudioDownloadToken, Fixnum, Hash)>] AudioDownloadToken data, response status code and response headers
    def get_audio_download_token_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AudioApi.get_audio_download_token ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AudioApi.get_audio_download_token"
      end
      if @api_client.config.client_side_validation && id < 1
        fail ArgumentError, 'invalid value for "id" when calling AudioApi.get_audio_download_token, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/audios/{id}/download_token".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'AudioDownloadToken')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#get_audio_download_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all audios accessable.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<Audio>]
    def list_audios(opts = {})
      data, _status_code, _headers = list_audios_with_http_info(opts)
      return data
    end

    # Get all audios accessable.
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Audio>, Fixnum, Hash)>] Array<Audio> data, response status code and response headers
    def list_audios_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AudioApi.list_audios ..."
      end
      # resource path
      local_var_path = "/audios"

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
        :return_type => 'Array<Audio>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AudioApi#list_audios\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
