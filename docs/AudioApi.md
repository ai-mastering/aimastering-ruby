# Aimastering::AudioApi

All URIs are relative to *https://aimastering.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_audio**](AudioApi.md#create_audio) | **POST** /audios | Create a new audio.
[**download_audio**](AudioApi.md#download_audio) | **GET** /audios/{id}/download | Download an audio data by id.
[**download_audio_by_token**](AudioApi.md#download_audio_by_token) | **GET** /audios/download_by_token | Download an audio data by audio_download_token.
[**get_audio**](AudioApi.md#get_audio) | **GET** /audios/{id} | Get an audio by id.
[**get_audio_analysis**](AudioApi.md#get_audio_analysis) | **GET** /audios/{id}/analysis | Get an audio analysis by id.
[**get_audio_download_token**](AudioApi.md#get_audio_download_token) | **GET** /audios/{id}/download_token | Get an audio download token by id.
[**list_audios**](AudioApi.md#list_audios) | **GET** /audios | Get all audios accessable.


# **create_audio**
> Audio create_audio(opts)

Create a new audio.

### Example
```ruby
# load the gem
require 'aimastering'
# setup authorization
Aimastering.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Aimastering::AudioApi.new

opts = { 
  file: File.new("/path/to/file.txt") # File | The file to upload.
}

begin
  #Create a new audio.
  result = api_instance.create_audio(opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AudioApi->create_audio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| The file to upload. | [optional] 

### Return type

[**Audio**](Audio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **download_audio**
> String download_audio(id)

Download an audio data by id.

### Example
```ruby
# load the gem
require 'aimastering'
# setup authorization
Aimastering.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Aimastering::AudioApi.new

id = 56 # Integer | Audio id


begin
  #Download an audio data by id.
  result = api_instance.download_audio(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AudioApi->download_audio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Audio id | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **download_audio_by_token**
> String download_audio_by_token(download_token)

Download an audio data by audio_download_token.

### Example
```ruby
# load the gem
require 'aimastering'
# setup authorization
Aimastering.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Aimastering::AudioApi.new

download_token = "download_token_example" # String | Audio download token


begin
  #Download an audio data by audio_download_token.
  result = api_instance.download_audio_by_token(download_token)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AudioApi->download_audio_by_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_token** | **String**| Audio download token | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **get_audio**
> Audio get_audio(id)

Get an audio by id.

### Example
```ruby
# load the gem
require 'aimastering'
# setup authorization
Aimastering.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Aimastering::AudioApi.new

id = 56 # Integer | Audio id


begin
  #Get an audio by id.
  result = api_instance.get_audio(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AudioApi->get_audio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Audio id | 

### Return type

[**Audio**](Audio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_audio_analysis**
> AudioAnalysis get_audio_analysis(id)

Get an audio analysis by id.

### Example
```ruby
# load the gem
require 'aimastering'
# setup authorization
Aimastering.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Aimastering::AudioApi.new

id = 56 # Integer | Audio id


begin
  #Get an audio analysis by id.
  result = api_instance.get_audio_analysis(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AudioApi->get_audio_analysis: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Audio id | 

### Return type

[**AudioAnalysis**](AudioAnalysis.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_audio_download_token**
> AudioDownloadToken get_audio_download_token(id)

Get an audio download token by id.

### Example
```ruby
# load the gem
require 'aimastering'
# setup authorization
Aimastering.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Aimastering::AudioApi.new

id = 56 # Integer | Audio id


begin
  #Get an audio download token by id.
  result = api_instance.get_audio_download_token(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AudioApi->get_audio_download_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Audio id | 

### Return type

[**AudioDownloadToken**](AudioDownloadToken.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_audios**
> Array&lt;Audio&gt; list_audios

Get all audios accessable.

### Example
```ruby
# load the gem
require 'aimastering'
# setup authorization
Aimastering.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = Aimastering::AudioApi.new

begin
  #Get all audios accessable.
  result = api_instance.list_audios
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AudioApi->list_audios: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Audio&gt;**](Audio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



