# Aimastering::StatisticsApi

All URIs are relative to *https://bakuage.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_group_buy_statistics**](StatisticsApi.md#get_group_buy_statistics) | **GET** /statistics/group_buy | Get group buy statistics.
[**list_anonymized_masterings**](StatisticsApi.md#list_anonymized_masterings) | **GET** /statistics/anonymized_masterings | Get anonymized masterings.
[**list_kpis**](StatisticsApi.md#list_kpis) | **GET** /statistics/kpis | Get KPIs.


# **get_group_buy_statistics**
> GroupBuyStatistics get_group_buy_statistics

Get group buy statistics.

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

api_instance = Aimastering::StatisticsApi.new

begin
  #Get group buy statistics.
  result = api_instance.get_group_buy_statistics
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling StatisticsApi->get_group_buy_statistics: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupBuyStatistics**](GroupBuyStatistics.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_anonymized_masterings**
> Array&lt;AnonymizedMastering&gt; list_anonymized_masterings

Get anonymized masterings.

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

api_instance = Aimastering::StatisticsApi.new

begin
  #Get anonymized masterings.
  result = api_instance.list_anonymized_masterings
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling StatisticsApi->list_anonymized_masterings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;AnonymizedMastering&gt;**](AnonymizedMastering.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_kpis**
> Kpi list_kpis

Get KPIs.

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

api_instance = Aimastering::StatisticsApi.new

begin
  #Get KPIs.
  result = api_instance.list_kpis
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling StatisticsApi->list_kpis: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Kpi**](Kpi.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



