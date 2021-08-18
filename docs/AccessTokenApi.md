# Aimastering::AccessTokenApi

All URIs are relative to *https://api.bakuage.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_access_token**](AccessTokenApi.md#create_access_token) | **POST** /access_tokens | Create an API access token.


# **create_access_token**
> AccessToken create_access_token

Create an API access token.

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

api_instance = Aimastering::AccessTokenApi.new

begin
  #Create an API access token.
  result = api_instance.create_access_token
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AccessTokenApi->create_access_token: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



