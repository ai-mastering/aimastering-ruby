# Aimastering::SpSubscriptionApi

All URIs are relative to *https://api.bakuage.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_sp_subscription**](SpSubscriptionApi.md#create_sp_subscription) | **POST** /sp_subscriptions | Create a new smartphone subscription.
[**list_sp_subscriptions**](SpSubscriptionApi.md#list_sp_subscriptions) | **GET** /sp_subscriptions | Get all accessable smartphone subscriptions.


# **create_sp_subscription**
> SpSubscription create_sp_subscription(service, opts)

Create a new smartphone subscription.

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

api_instance = Aimastering::SpSubscriptionApi.new

service = "service_example" # String | Service.

opts = { 
  receipt: "receipt_example" # String | Base64 encoded app store receipt. This parameter is effective only when the service is \"appstore\".
}

begin
  #Create a new smartphone subscription.
  result = api_instance.create_sp_subscription(service, opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling SpSubscriptionApi->create_sp_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| Service. | 
 **receipt** | **String**| Base64 encoded app store receipt. This parameter is effective only when the service is \&quot;appstore\&quot;. | [optional] 

### Return type

[**SpSubscription**](SpSubscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **list_sp_subscriptions**
> Array&lt;SpSubscription&gt; list_sp_subscriptions

Get all accessable smartphone subscriptions.

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

api_instance = Aimastering::SpSubscriptionApi.new

begin
  #Get all accessable smartphone subscriptions.
  result = api_instance.list_sp_subscriptions
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling SpSubscriptionApi->list_sp_subscriptions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;SpSubscription&gt;**](SpSubscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



