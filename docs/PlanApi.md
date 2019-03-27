# Aimastering::PlanApi

All URIs are relative to *https://bakuage.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_plans**](PlanApi.md#list_plans) | **GET** /plans | Get all accessable plans.


# **list_plans**
> Array&lt;Plan&gt; list_plans

Get all accessable plans.

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

api_instance = Aimastering::PlanApi.new

begin
  #Get all accessable plans.
  result = api_instance.list_plans
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling PlanApi->list_plans: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Plan&gt;**](Plan.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



