# DisplayAdsApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**display_ads_get**](DisplayAdsApi.md#display_ads_get) | **GET** /display_ads | display ads
[**display_ads_id_get**](DisplayAdsApi.md#display_ads_id_get) | **GET** /display_ads/{id} | display ad
[**display_ads_id_put**](DisplayAdsApi.md#display_ads_id_put) | **PUT** /display_ads/{id} | display ads
[**display_ads_id_unpublish_put**](DisplayAdsApi.md#display_ads_id_unpublish_put) | **PUT** /display_ads/{id}/unpublish | unpublish
[**display_ads_post**](DisplayAdsApi.md#display_ads_post) | **POST** /display_ads | display ads


# **display_ads_get**
> display_ads_get(_api::DisplayAdsApi; _mediaType=nothing) -> Vector{DisplayAd}, OpenAPI.Clients.ApiResponse <br/>
> display_ads_get(_api::DisplayAdsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{DisplayAd} }, OpenAPI.Clients.ApiResponse

display ads

This endpoint allows the client to retrieve a list of all display ads.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{DisplayAd}**](DisplayAd.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **display_ads_id_get**
> display_ads_id_get(_api::DisplayAdsApi, id::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> display_ads_id_get(_api::DisplayAdsApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

display ad

This endpoint allows the client to retrieve a single display ad, via its id.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DisplayAdsApi** | API context | 
**id** | **Int64**| The ID of the display ad. | [default to nothing]

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **display_ads_id_put**
> display_ads_id_put(_api::DisplayAdsApi, id::Int64; display_ad=nothing, _mediaType=nothing) -> Vector{DisplayAd}, OpenAPI.Clients.ApiResponse <br/>
> display_ads_id_put(_api::DisplayAdsApi, response_stream::Channel, id::Int64; display_ad=nothing, _mediaType=nothing) -> Channel{ Vector{DisplayAd} }, OpenAPI.Clients.ApiResponse

display ads

This endpoint allows the client to update the attributes of a single display ad, via its id.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DisplayAdsApi** | API context | 
**id** | **Int64**| The ID of the display ad. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **display_ad** | [**Vector{DisplayAd}**](DisplayAd.md)|  | 

### Return type

[**Vector{DisplayAd}**](DisplayAd.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **display_ads_id_unpublish_put**
> display_ads_id_unpublish_put(_api::DisplayAdsApi, id::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> display_ads_id_unpublish_put(_api::DisplayAdsApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

unpublish

This endpoint allows the client to remove a display ad from rotation by un-publishing it.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DisplayAdsApi** | API context | 
**id** | **Int64**| The ID of the display ad to unpublish. | [default to nothing]

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **display_ads_post**
> display_ads_post(_api::DisplayAdsApi; display_ad=nothing, _mediaType=nothing) -> Vector{DisplayAd}, OpenAPI.Clients.ApiResponse <br/>
> display_ads_post(_api::DisplayAdsApi, response_stream::Channel; display_ad=nothing, _mediaType=nothing) -> Channel{ Vector{DisplayAd} }, OpenAPI.Clients.ApiResponse

display ads

This endpoint allows the client to create a new display ad.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **DisplayAdsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **display_ad** | [**Vector{DisplayAd}**](DisplayAd.md)|  | 

### Return type

[**Vector{DisplayAd}**](DisplayAd.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

