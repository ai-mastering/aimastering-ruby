# Aimastering::AmazonSubscriptionApi

All URIs are relative to *https://bakuage.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_amazon_subscriptions**](AmazonSubscriptionApi.md#list_amazon_subscriptions) | **GET** /amazon_subscriptions | Get all accessable amazon subscriptions.


# **list_amazon_subscriptions**
> Array&lt;AmazonSubscription&gt; list_amazon_subscriptions

Get all accessable amazon subscriptions.

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

api_instance = Aimastering::AmazonSubscriptionApi.new

begin
  #Get all accessable amazon subscriptions.
  result = api_instance.list_amazon_subscriptions
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling AmazonSubscriptionApi->list_amazon_subscriptions: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;AmazonSubscription&gt;**](AmazonSubscription.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



