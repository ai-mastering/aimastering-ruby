# Aimastering::LibraryAudioApi

All URIs are relative to *https://bakuage.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_library_audio**](LibraryAudioApi.md#create_library_audio) | **POST** /library_audios | Create a new library audio.
[**create_library_audio_like**](LibraryAudioApi.md#create_library_audio_like) | **POST** /library_audios/{id}/like | Create a new library audio like.
[**delete_library_audio**](LibraryAudioApi.md#delete_library_audio) | **DELETE** /library_audios/{id} | Delete library audio.
[**get_library_audio**](LibraryAudioApi.md#get_library_audio) | **GET** /library_audios/{id} | Get a library audio by id.
[**get_library_audio_analysis**](LibraryAudioApi.md#get_library_audio_analysis) | **GET** /library_audios/{id}/analysis | Get a library audio analysis by id.
[**list_library_audios**](LibraryAudioApi.md#list_library_audios) | **GET** /library_audios | Get all library audios accessable.
[**update_library_audio**](LibraryAudioApi.md#update_library_audio) | **PUT** /library_audios/{id} | Update library audio.


# **create_library_audio**
> LibraryAudio create_library_audio(opts)

Create a new library audio.

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

api_instance = Aimastering::LibraryAudioApi.new

opts = { 
  file: File.new("/path/to/file.txt") # File | The file to upload.
}

begin
  #Create a new library audio.
  result = api_instance.create_library_audio(opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling LibraryAudioApi->create_library_audio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| The file to upload. | [optional] 

### Return type

[**LibraryAudio**](LibraryAudio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_library_audio_like**
> LibraryAudioLike create_library_audio_like(id)

Create a new library audio like.

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

api_instance = Aimastering::LibraryAudioApi.new

id = 56 # Integer | Library audio id


begin
  #Create a new library audio like.
  result = api_instance.create_library_audio_like(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling LibraryAudioApi->create_library_audio_like: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Library audio id | 

### Return type

[**LibraryAudioLike**](LibraryAudioLike.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **delete_library_audio**
> LibraryAudio delete_library_audio(id)

Delete library audio.

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

api_instance = Aimastering::LibraryAudioApi.new

id = 56 # Integer | Library audio id


begin
  #Delete library audio.
  result = api_instance.delete_library_audio(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling LibraryAudioApi->delete_library_audio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Library audio id | 

### Return type

[**LibraryAudio**](LibraryAudio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **get_library_audio**
> LibraryAudio get_library_audio(id)

Get a library audio by id.

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

api_instance = Aimastering::LibraryAudioApi.new

id = 56 # Integer | Library audio id


begin
  #Get a library audio by id.
  result = api_instance.get_library_audio(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling LibraryAudioApi->get_library_audio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Library audio id | 

### Return type

[**LibraryAudio**](LibraryAudio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_library_audio_analysis**
> LibraryAudioAnalysis get_library_audio_analysis(id)

Get a library audio analysis by id.

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

api_instance = Aimastering::LibraryAudioApi.new

id = 56 # Integer | Library audio id


begin
  #Get a library audio analysis by id.
  result = api_instance.get_library_audio_analysis(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling LibraryAudioApi->get_library_audio_analysis: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Library audio id | 

### Return type

[**LibraryAudioAnalysis**](LibraryAudioAnalysis.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_library_audios**
> Array&lt;LibraryAudio&gt; list_library_audios

Get all library audios accessable.

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

api_instance = Aimastering::LibraryAudioApi.new

begin
  #Get all library audios accessable.
  result = api_instance.list_library_audios
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling LibraryAudioApi->list_library_audios: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;LibraryAudio&gt;**](LibraryAudio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_library_audio**
> LibraryAudio update_library_audio(id, opts)

Update library audio.

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

api_instance = Aimastering::LibraryAudioApi.new

id = 56 # Integer | Library audio id

opts = { 
  is_public: true # BOOLEAN | Whether the library audio is public.
}

begin
  #Update library audio.
  result = api_instance.update_library_audio(id, opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling LibraryAudioApi->update_library_audio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Library audio id | 
 **is_public** | **BOOLEAN**| Whether the library audio is public. | [optional] 

### Return type

[**LibraryAudio**](LibraryAudio.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



