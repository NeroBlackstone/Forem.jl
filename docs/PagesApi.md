# PagesApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pages_get**](PagesApi.md#pages_get) | **GET** /pages | show details for all pages
[**pages_id_delete**](PagesApi.md#pages_id_delete) | **DELETE** /pages/{id} | remove a page
[**pages_id_get**](PagesApi.md#pages_id_get) | **GET** /pages/{id} | show details for a page
[**pages_id_put**](PagesApi.md#pages_id_put) | **PUT** /pages/{id} | update details for a page
[**pages_post**](PagesApi.md#pages_post) | **POST** /pages | pages


# **pages_get**
> pages_get(_api::PagesApi; _mediaType=nothing) -> Vector{Page}, OpenAPI.Clients.ApiResponse <br/>
> pages_get(_api::PagesApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{Page} }, OpenAPI.Clients.ApiResponse

show details for all pages

This endpoint allows the client to retrieve details for all Page objects.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{Page}**](Page.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **pages_id_delete**
> pages_id_delete(_api::PagesApi, id::Int64; _mediaType=nothing) -> Page, OpenAPI.Clients.ApiResponse <br/>
> pages_id_delete(_api::PagesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Page }, OpenAPI.Clients.ApiResponse

remove a page

This endpoint allows the client to delete a single Page object, specified by ID.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PagesApi** | API context | 
**id** | **Int64**| The ID of the page. | [default to nothing]

### Return type

[**Page**](Page.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **pages_id_get**
> pages_id_get(_api::PagesApi, id::Int64; _mediaType=nothing) -> Page, OpenAPI.Clients.ApiResponse <br/>
> pages_id_get(_api::PagesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Page }, OpenAPI.Clients.ApiResponse

show details for a page

This endpoint allows the client to retrieve details for a single Page object, specified by ID.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PagesApi** | API context | 
**id** | **Int64**| The ID of the page. | [default to nothing]

### Return type

[**Page**](Page.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **pages_id_put**
> pages_id_put(_api::PagesApi, id::Int64; page=nothing, _mediaType=nothing) -> Page, OpenAPI.Clients.ApiResponse <br/>
> pages_id_put(_api::PagesApi, response_stream::Channel, id::Int64; page=nothing, _mediaType=nothing) -> Channel{ Page }, OpenAPI.Clients.ApiResponse

update details for a page

This endpoint allows the client to retrieve details for a single Page object, specified by ID.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PagesApi** | API context | 
**id** | **Int64**| The ID of the page. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | [**Page**](Page.md)|  | 

### Return type

[**Page**](Page.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **pages_post**
> pages_post(_api::PagesApi; pages_post_request=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> pages_post(_api::PagesApi, response_stream::Channel; pages_post_request=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

pages

This endpoint allows the client to create a new page.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PagesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pages_post_request** | [**PagesPostRequest**](PagesPostRequest.md)|  | 

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

