# Aimastering::UserApi

All URIs are relative to *https://api.bakuage.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_self**](UserApi.md#get_self) | **GET** /users/self | Get self user.
[**notify_registration**](UserApi.md#notify_registration) | **PUT** /users/self/notify_registration | Notify user is registered.
[**send_invitation**](UserApi.md#send_invitation) | **POST** /users/self/send_invitation | Send invitation.
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



# **notify_registration**
> User notify_registration(opts)

Notify user is registered.

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
  affiliate_id: "affiliate_id_example", # String | The affiliate id of inviter.
  referrer_url: "referrer_url_example" # String | The referrer URL.
}

begin
  #Notify user is registered.
  result = api_instance.notify_registration(opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling UserApi->notify_registration: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **affiliate_id** | **String**| The affiliate id of inviter. | [optional] 
 **referrer_url** | **String**| The referrer URL. | [optional] 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **send_invitation**
> User send_invitation(invitee_email)

Send invitation.

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

invitee_email = "invitee_email_example" # String | The email of invitee.


begin
  #Send invitation.
  result = api_instance.send_invitation(invitee_email)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling UserApi->send_invitation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitee_email** | **String**| The email of invitee. | 

### Return type

[**User**](User.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
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



