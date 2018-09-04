# Aimastering::UserApi

All URIs are relative to *https://aimastering.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_self**](UserApi.md#get_self) | **GET** /users/self | Get self user.
[**update_self**](UserApi.md#update_self) | **PUT** /users/self | Update self user.


# **get_self**
> User get_self

Get self user.

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

api_instance = Aimastering::UserApi.new

begin
  #Get self user.
  result = api_instance.get_self
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling UserApi->get_self: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_self**
> User update_self(opts)

Update self user.

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

api_instance = Aimastering::UserApi.new

opts = { 
  agreed_terms_of_service: true, # BOOLEAN | Whether you agreed terms of service.
  email: "email_example" # String | The email.
}

begin
  #Update self user.
  result = api_instance.update_self(opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling UserApi->update_self: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **agreed_terms_of_service** | **BOOLEAN**| Whether you agreed terms of service. | [optional] 
 **email** | **String**| The email. | [optional] 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



