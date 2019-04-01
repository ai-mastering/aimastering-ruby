# Aimastering::MasteringApi

All URIs are relative to *https://bakuage.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_mastering**](MasteringApi.md#cancel_mastering) | **PUT** /masterings/{id}/cancel | Cancel a mastering by id.
[**create_mastering**](MasteringApi.md#create_mastering) | **POST** /masterings | Create a new mastering.
[**delete_mastering**](MasteringApi.md#delete_mastering) | **DELETE** /masterings/{id} | Delete mastering.
[**free_unlock_mastering**](MasteringApi.md#free_unlock_mastering) | **PUT** /masterings/{id}/free_unlock | Free unlock a mastering by id.
[**get_mastering**](MasteringApi.md#get_mastering) | **GET** /masterings/{id} | Get a mastering by id.
[**get_mastering_unlock_product**](MasteringApi.md#get_mastering_unlock_product) | **GET** /masterings/{id}/unlock_product | Review a mastering by id.
[**list_masterings**](MasteringApi.md#list_masterings) | **GET** /masterings | Get all accessable masterings.
[**publish_mastering**](MasteringApi.md#publish_mastering) | **POST** /masterings/{id}/publish | Publish a mastering by id.
[**review_mastering**](MasteringApi.md#review_mastering) | **PUT** /masterings/{id}/review | Review a mastering by id.
[**update_mastering**](MasteringApi.md#update_mastering) | **PUT** /masterings/{id} | Update a mastering.


# **cancel_mastering**
> Mastering cancel_mastering(id, )

Cancel a mastering by id.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id


begin
  #Cancel a mastering by id.
  result = api_instance.cancel_mastering(id, )
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->cancel_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_mastering**
> Mastering create_mastering(input_audio_id, opts)

Create a new mastering.

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

api_instance = Aimastering::MasteringApi.new

input_audio_id = 56 # Integer | Input audio id

opts = { 
  mode: "default", # String | Mode
  bass_preservation: false, # BOOLEAN | This parameter represents if the bass preservation is enabled.
  mastering: false, # BOOLEAN | This parameter represents if the mastering is enabled. This parameter is effective only when the mode is \"default\" or \"custom\".
  mastering_algorithm: "v2", # String | 
  noise_reduction: false, # BOOLEAN | This parameter represents if the nosie reduction is enabled. This parameter is effective only when the mode is \"custom\".
  preset: "general", # String | This parameter is effective only when the mode is \"custom\".
  target_loudness: -5, # Float | This parameter represents the target loudness of the output audio in dB. This parameter is effective only when the mode is \"custom\".
  target_loudness_mode: "loudness", # String | 
  mastering_matching_level: 0.5, # Float | This parameter represents the mastering reference matching level. This parameter is effective only when the mode is \"custom\" and the mastering is enabled.
  mastering_reverb: false, # BOOLEAN | This parameter represents if the mastering reverb is enabled. This parameter is effective only when the mode is \"custom\" and the mastering is enabled.
  mastering_reverb_gain: -36, # Float | This parameter represents the mastering reverb gain relative to the dry sound in dB. This parameter is effective only when the mode is \"custom\" and the mastering is \"true\" and the mastering_reverb is \"true\".
  reference_audio_id: 56, # Integer | Reference audio id. This parameter is effective only when the mode is \"custom\" and the mastering is enabled.
  low_cut_freq: 20, # Float | This parameter represents the low cut freq  of the output audio in Hz. This parameter is effective only when the mode is \"custom\".
  high_cut_freq: 20000, # Float | This parameter represents the high cut freq of the output audio in Hz. This parameter is effective only when the mode is \"custom\".
  ceiling: 0, # Float | 
  ceiling_mode: "0", # String | 
  oversample: 1, # Integer | 
  sample_rate: 44100, # Integer | This parameter represents the sample rate of the output audio in dB. This parameter is effective only when the mode is \"custom\".
  bit_depth: 16, # Integer | This parameter represents the bit depth of the output audio in dB. This parameter is effective only when the mode is \"custom\".
  output_format: "wav", # String | This parameter represents the format of the output audio. This parameter is effective only when the mode is \"custom\".
  for_preview: false, # BOOLEAN | If this is true, the mastering is treated for preview purpose (ex. not purchasable, not publishable, short lifetime). 
  start_at: 0, # Float | Partial mastering start at. 
  end_at: -1, # Float | Partial mastering end at. 
  video_title: "" # String | This parameter represents the title of output video.
}

begin
  #Create a new mastering.
  result = api_instance.create_mastering(input_audio_id, opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->create_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_audio_id** | **Integer**| Input audio id | 
 **mode** | **String**| Mode | [optional] [default to default]
 **bass_preservation** | **BOOLEAN**| This parameter represents if the bass preservation is enabled. | [optional] [default to false]
 **mastering** | **BOOLEAN**| This parameter represents if the mastering is enabled. This parameter is effective only when the mode is \&quot;default\&quot; or \&quot;custom\&quot;. | [optional] [default to false]
 **mastering_algorithm** | **String**|  | [optional] [default to v2]
 **noise_reduction** | **BOOLEAN**| This parameter represents if the nosie reduction is enabled. This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to false]
 **preset** | **String**| This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to general]
 **target_loudness** | **Float**| This parameter represents the target loudness of the output audio in dB. This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to -5]
 **target_loudness_mode** | **String**|  | [optional] [default to loudness]
 **mastering_matching_level** | **Float**| This parameter represents the mastering reference matching level. This parameter is effective only when the mode is \&quot;custom\&quot; and the mastering is enabled. | [optional] [default to 0.5]
 **mastering_reverb** | **BOOLEAN**| This parameter represents if the mastering reverb is enabled. This parameter is effective only when the mode is \&quot;custom\&quot; and the mastering is enabled. | [optional] [default to false]
 **mastering_reverb_gain** | **Float**| This parameter represents the mastering reverb gain relative to the dry sound in dB. This parameter is effective only when the mode is \&quot;custom\&quot; and the mastering is \&quot;true\&quot; and the mastering_reverb is \&quot;true\&quot;. | [optional] [default to -36]
 **reference_audio_id** | **Integer**| Reference audio id. This parameter is effective only when the mode is \&quot;custom\&quot; and the mastering is enabled. | [optional] 
 **low_cut_freq** | **Float**| This parameter represents the low cut freq  of the output audio in Hz. This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to 20]
 **high_cut_freq** | **Float**| This parameter represents the high cut freq of the output audio in Hz. This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to 20000]
 **ceiling** | **Float**|  | [optional] [default to 0]
 **ceiling_mode** | **String**|  | [optional] [default to 0]
 **oversample** | **Integer**|  | [optional] [default to 1]
 **sample_rate** | **Integer**| This parameter represents the sample rate of the output audio in dB. This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to 44100]
 **bit_depth** | **Integer**| This parameter represents the bit depth of the output audio in dB. This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to 16]
 **output_format** | **String**| This parameter represents the format of the output audio. This parameter is effective only when the mode is \&quot;custom\&quot;. | [optional] [default to wav]
 **for_preview** | **BOOLEAN**| If this is true, the mastering is treated for preview purpose (ex. not purchasable, not publishable, short lifetime).  | [optional] [default to false]
 **start_at** | **Float**| Partial mastering start at.  | [optional] [default to 0]
 **end_at** | **Float**| Partial mastering end at.  | [optional] [default to -1]
 **video_title** | **String**| This parameter represents the title of output video. | [optional] [default to ]

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **delete_mastering**
> Mastering delete_mastering(id, )

Delete mastering.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id


begin
  #Delete mastering.
  result = api_instance.delete_mastering(id, )
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->delete_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **free_unlock_mastering**
> Mastering free_unlock_mastering(id, )

Free unlock a mastering by id.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id


begin
  #Free unlock a mastering by id.
  result = api_instance.free_unlock_mastering(id, )
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->free_unlock_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_mastering**
> Mastering get_mastering(id, )

Get a mastering by id.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id


begin
  #Get a mastering by id.
  result = api_instance.get_mastering(id, )
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->get_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_mastering_unlock_product**
> Mastering get_mastering_unlock_product(id, )

Review a mastering by id.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id


begin
  #Review a mastering by id.
  result = api_instance.get_mastering_unlock_product(id, )
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->get_mastering_unlock_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_masterings**
> Array&lt;Mastering&gt; list_masterings

Get all accessable masterings.

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

api_instance = Aimastering::MasteringApi.new

begin
  #Get all accessable masterings.
  result = api_instance.list_masterings
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->list_masterings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Mastering&gt;**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **publish_mastering**
> Mastering publish_mastering(id, access_token, message, opts)

Publish a mastering by id.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id

access_token = "access_token_example" # String | This parameter represents if the access token of the publishment service API.

message = "message_example" # String | This parameter represents the publishment message.

opts = { 
  service: "service_example", # String | This parameter represents the publishment service.
  access_token_secret: "access_token_secret_example" # String | This parameter represents the access token secret of the publishment service API. This parameter is effective only when the service is \"twitter\".
}

begin
  #Publish a mastering by id.
  result = api_instance.publish_mastering(id, access_token, message, opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->publish_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 
 **access_token** | **String**| This parameter represents if the access token of the publishment service API. | 
 **message** | **String**| This parameter represents the publishment message. | 
 **service** | **String**| This parameter represents the publishment service. | [optional] 
 **access_token_secret** | **String**| This parameter represents the access token secret of the publishment service API. This parameter is effective only when the service is \&quot;twitter\&quot;. | [optional] 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **review_mastering**
> Mastering review_mastering(id, , opts)

Review a mastering by id.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id

opts = { 
  review_comment: "review_comment_example", # String | This parameter represents the review comment.
  review_score: 8.14 # Float | This parameter represents the review score.
}

begin
  #Review a mastering by id.
  result = api_instance.review_mastering(id, , opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->review_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 
 **review_comment** | **String**| This parameter represents the review comment. | [optional] 
 **review_score** | **Float**| This parameter represents the review score. | [optional] 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **update_mastering**
> Mastering update_mastering(id, , opts)

Update a mastering.

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

api_instance = Aimastering::MasteringApi.new

id = 56 # Integer | Mastering id

opts = { 
  preserved: true # BOOLEAN | Disable auto delete.
}

begin
  #Update a mastering.
  result = api_instance.update_mastering(id, , opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling MasteringApi->update_mastering: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mastering id | 
 **preserved** | **BOOLEAN**| Disable auto delete. | [optional] 

### Return type

[**Mastering**](Mastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



