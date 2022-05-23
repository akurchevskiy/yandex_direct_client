# SwaggerClient::DefaultApi

All URIs are relative to *https://api-sandbox.direct.yandex.com/json/v5*

Method | HTTP request | Description
------------- | ------------- | -------------
[**agencyclientsget**](DefaultApi.md#agencyclientsget) | **POST** /agencyclients | 
[**get_campaign**](DefaultApi.md#get_campaign) | **POST** /campaigns | 

# **agencyclientsget**
> ClientGetItemResponse agencyclientsget(body)



AgencyClients

### Example

```ruby
# load the gem
require 'swagger_client'
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



# **get_campaign**
> CampaignsGetItemResponse get_campaign(body)



Campaigns

### Example

```ruby
# load the gem
require 'swagger_client'
# setup authorization
YandexDirectClient.configure do |config|
  # Configure OAuth2 access token for authorization: newSecurityScheme
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = YandexDirectClient::DefaultApi.new
body = YandexDirectClient::CampaignsGetItemRequest.new # CampaignsGetItemRequest | Optional description in *Markdown*
opts = {
  client_login: 'client_login_example' # String | 
}
begin
  result = api_instance.get_campaign(body, opts)
  p result
rescue YandexDirectClient::ApiError => e
  puts "Exception when calling DefaultApi->get_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CampaignsGetItemRequest**](CampaignsGetItemRequest.md)| Optional description in *Markdown* | 

### Return type

[**CampaignsGetItemResponse**](CampaignsGetItemResponse.md)

### Authorization

[newSecurityScheme](../README.md#newSecurityScheme)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



