# ReadinglistApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_readinglist**](ReadinglistApi.md#get_readinglist) | **GET** /readinglist | Readinglist


# **get_readinglist**
> get_readinglist(_api::ReadinglistApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_readinglist(_api::ReadinglistApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

Readinglist

This endpoint allows the client to retrieve a list of articles that were saved to a Users readinglist.         It supports pagination, each page will contain `30` articles by default

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ReadinglistApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 30]

### Return type

[**Vector{ArticleIndex}**](ArticleIndex.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

