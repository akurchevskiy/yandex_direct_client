# SwaggerClient::DefaultApi

All URIs are relative to *https://api-sandbox.direct.yandex.com/json/v5*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agencyclientsget**](DefaultApi.md#agencyclientsget) | **POST** /agencyclients | 

# **agencyclientsget**
> ClientGetItemResponse agencyclientsget(body)



AgencyClients

### Example

```ruby
# load the gem
require 'yandex_direct_client'
# setup authorization
YandexDirectClient.configure do |config|
  # Configure OAuth2 access token for authorization: newSecurityScheme
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = YandexDirectClient::DefaultApi.new
body = YandexDirectClient::ClientGetItemRequest.new # ClientGetItemRequest | Optional description in *Markdown*

begin
  result = api_instance.agencyclientsget(body)
  p result
rescue YandexDirectClient::ApiError => e
  puts "Exception when calling DefaultApi->agencyclientsget: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ClientGetItemRequest**](ClientGetItemRequest.md)| Optional description in *Markdown* | 

### Return type

[**ClientGetItemResponse**](ClientGetItemResponse.md)

### Authorization

[newSecurityScheme](../README.md#newSecurityScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



