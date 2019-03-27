# Aimastering::ExternalSearchApi

All URIs are relative to *https://bakuage.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_external**](ExternalSearchApi.md#search_external) | **GET** /external_search | Search external music and get name, url, thumbnails, etc.


# **search_external**
> ExternalSearchResult search_external(query, country)

Search external music and get name, url, thumbnails, etc.

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

api_instance = Aimastering::ExternalSearchApi.new

query = "query_example" # String | Search query

country = "country_example" # String | Country ex. US, JP, etc


begin
  #Search external music and get name, url, thumbnails, etc.
  result = api_instance.search_external(query, country)
  p result
rescue Aimastering::ApiError => e
  puts "Exception when calling ExternalSearchApi->search_external: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Search query | 
 **country** | **String**| Country ex. US, JP, etc | 

### Return type

[**ExternalSearchResult**](ExternalSearchResult.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



