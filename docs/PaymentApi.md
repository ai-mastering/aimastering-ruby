# Aimastering::PaymentApi

All URIs are relative to *https://api.bakuage.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment**](PaymentApi.md#create_payment) | **POST** /payments | Create a new payment.
[**execute_payment**](PaymentApi.md#execute_payment) | **PUT** /payments/{id}/execute | Execute a payment by id.
[**get_payment**](PaymentApi.md#get_payment) | **GET** /payments/{id} | Get a payment by id.
[**list_payments**](PaymentApi.md#list_payments) | **GET** /payments | Get all accessable payments.


# **create_payment**
> Payment create_payment(product_token, service, opts)

Create a new payment.

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

api_instance = Aimastering::PaymentApi.new

product_token = "product_token_example" # String | This parameter represents the product token.

service = "service_example" # String | This parameter represents the payment message.

opts = { 
  token: "token_example" # String | This parameter represents the card token. This parameter is effective only when the service is \"stripe\".
}

begin
  #Create a new payment.
  result = api_instance.create_payment(product_token, service, opts)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling PaymentApi->create_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_token** | **String**| This parameter represents the product token. | 
 **service** | **String**| This parameter represents the payment message. | 
 **token** | **String**| This parameter represents the card token. This parameter is effective only when the service is \&quot;stripe\&quot;. | [optional] 

### Return type

[**Payment**](Payment.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **execute_payment**
> Payment execute_payment(id, payer_id)

Execute a payment by id.

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

api_instance = Aimastering::PaymentApi.new

id = 56 # Integer | Payment id

payer_id = "payer_id_example" # String | This parameter represents the card token. This parameter is effective only when the service is \"paypal\".


begin
  #Execute a payment by id.
  result = api_instance.execute_payment(id, payer_id)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling PaymentApi->execute_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payment id | 
 **payer_id** | **String**| This parameter represents the card token. This parameter is effective only when the service is \&quot;paypal\&quot;. | 

### Return type

[**Payment**](Payment.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **get_payment**
> Payment get_payment(id, )

Get a payment by id.

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

api_instance = Aimastering::PaymentApi.new

id = 56 # Integer | Payment id


begin
  #Get a payment by id.
  result = api_instance.get_payment(id, )
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling PaymentApi->get_payment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Payment id | 

### Return type

[**Payment**](Payment.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_payments**
> Array&lt;Payment&gt; list_payments

Get all accessable payments.

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

api_instance = Aimastering::PaymentApi.new

begin
  #Get all accessable payments.
  result = api_instance.list_payments
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling PaymentApi->list_payments: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Payment&gt;**](Payment.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



