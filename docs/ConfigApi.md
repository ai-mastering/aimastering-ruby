# Aimastering::ConfigApi

All URIs are relative to *https://bakuage.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_config**](ConfigApi.md#get_config) | **GET** /config | Get config.


# **get_config**
> Config get_config

Get config.

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

api_instance = Aimastering::ConfigApi.new

begin
  #Get config.
  result = api_instance.get_config
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling ConfigApi->get_config: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Config**](Config.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



