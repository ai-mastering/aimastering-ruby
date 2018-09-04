# Aimastering::VideoApi

All URIs are relative to *https://aimastering.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_video**](VideoApi.md#download_video) | **GET** /videos/{id}/download | Download an video data by id.
[**download_video_by_token**](VideoApi.md#download_video_by_token) | **GET** /videos/download_by_token | Download an video data by video_download_token.
[**get_video**](VideoApi.md#get_video) | **GET** /videos/{id} | Get an video by id.
[**get_video_download_token**](VideoApi.md#get_video_download_token) | **GET** /videos/{id}/download_token | Get an video download token by id.
[**list_videos**](VideoApi.md#list_videos) | **GET** /videos | Get all videos accessable.


# **download_video**
> String download_video(id)

Download an video data by id.

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

api_instance = Aimastering::VideoApi.new

id = 56 # Integer | Video id


begin
  #Download an video data by id.
  result = api_instance.download_video(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling VideoApi->download_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Video id | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **download_video_by_token**
> String download_video_by_token(download_token)

Download an video data by video_download_token.

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

api_instance = Aimastering::VideoApi.new

download_token = "download_token_example" # String | Video download token


begin
  #Download an video data by video_download_token.
  result = api_instance.download_video_by_token(download_token)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling VideoApi->download_video_by_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **download_token** | **String**| Video download token | 

### Return type

**String**

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream



# **get_video**
> Video get_video(id)

Get an video by id.

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

api_instance = Aimastering::VideoApi.new

id = 56 # Integer | Video id


begin
  #Get an video by id.
  result = api_instance.get_video(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling VideoApi->get_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Video id | 

### Return type

[**Video**](Video.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_video_download_token**
> VideoDownloadToken get_video_download_token(id)

Get an video download token by id.

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

api_instance = Aimastering::VideoApi.new

id = 56 # Integer | Video id


begin
  #Get an video download token by id.
  result = api_instance.get_video_download_token(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling VideoApi->get_video_download_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Video id | 

### Return type

[**VideoDownloadToken**](VideoDownloadToken.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_videos**
> Array&lt;Video&gt; list_videos

Get all videos accessable.

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

api_instance = Aimastering::VideoApi.new

begin
  #Get all videos accessable.
  result = api_instance.list_videos
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling VideoApi->list_videos: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Video&gt;**](Video.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



