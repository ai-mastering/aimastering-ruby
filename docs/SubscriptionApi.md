# Aimastering::SubscriptionApi

All URIs are relative to *https://aimastering.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_subscription**](SubscriptionApi.md#cancel_subscription) | **PUT** /subscriptions/{id}/cancel | Cancel a subscription by id.
[**cancel_subscription_cancellation**](SubscriptionApi.md#cancel_subscription_cancellation) | **PUT** /subscriptions/{id}/cancel_cancellation | Cancel the subscription cancellation  by id.
[**create_subscription**](SubscriptionApi.md#create_subscription) | **POST** /subscriptions | Create a new subscription.
[**get_subscription**](SubscriptionApi.md#get_subscription) | **GET** /subscriptions/{id} | Get a subscription by id.
[**list_subscriptions**](SubscriptionApi.md#list_subscriptions) | **GET** /subscriptions | Get all accessable subscriptions.


# **cancel_subscription**
> Subscription cancel_subscription(id)

Cancel a subscription by id.

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

api_instance = Aimastering::SubscriptionApi.new

id = 56 # Integer | Subscription id


begin
  #Cancel a subscription by id.
  result = api_instance.cancel_subscription(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling SubscriptionApi->cancel_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Subscription id | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **cancel_subscription_cancellation**
> Subscription cancel_subscription_cancellation(id)

Cancel the subscription cancellation  by id.

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

api_instance = Aimastering::SubscriptionApi.new

id = 56 # Integer | Subscription id


begin
  #Cancel the subscription cancellation  by id.
  result = api_instance.cancel_subscription_cancellation(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling SubscriptionApi->cancel_subscription_cancellation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Subscription id | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **create_subscription**
> Subscription create_subscription(service, opts)

Create a new subscription.

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

api_instance = Aimastering::SubscriptionApi.new

service = "service_example" # String | This parameter represents the payment message.

opts = { 
  stripe_plan_id: "stripe_plan_id_example", # String | The Stripe plan id. This parameter is effective only when the service is \"stripe\".
  token: "token_example" # String | This parameter represents the card token. This parameter is effective only when the service is \"stripe\".
}

begin
  #Create a new subscription.
  result = api_instance.create_subscription(service, opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling SubscriptionApi->create_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service** | **String**| This parameter represents the payment message. | 
 **stripe_plan_id** | **String**| The Stripe plan id. This parameter is effective only when the service is \&quot;stripe\&quot;. | [optional] 
 **token** | **String**| This parameter represents the card token. This parameter is effective only when the service is \&quot;stripe\&quot;. | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **get_subscription**
> Subscription get_subscription(id)

Get a subscription by id.

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

api_instance = Aimastering::SubscriptionApi.new

id = 56 # Integer | Subscription id


begin
  #Get a subscription by id.
  result = api_instance.get_subscription(id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling SubscriptionApi->get_subscription: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Subscription id | 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_subscriptions**
> Array&lt;Subscription&gt; list_subscriptions

Get all accessable subscriptions.

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

api_instance = Aimastering::SubscriptionApi.new

begin
  #Get all accessable subscriptions.
  result = api_instance.list_subscriptions
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling SubscriptionApi->list_subscriptions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Subscription&gt;**](Subscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



