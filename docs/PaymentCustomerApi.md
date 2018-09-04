# Aimastering::PaymentCustomerApi

All URIs are relative to *https://aimastering.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_default_payment_customer**](PaymentCustomerApi.md#get_default_payment_customer) | **GET** /payment_customers/default | Get a default payment customer.


# **get_default_payment_customer**
> Array&lt;PaymentCustomer&gt; get_default_payment_customer

Get a default payment customer.

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

api_instance = Aimastering::PaymentCustomerApi.new

begin
  #Get a default payment customer.
  result = api_instance.get_default_payment_customer
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling PaymentCustomerApi->get_default_payment_customer: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;PaymentCustomer&gt;**](PaymentCustomer.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



