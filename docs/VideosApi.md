# VideosApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**videos**](VideosApi.md#videos) | **GET** /videos | Articles with a video


# **videos**
> videos(_api::VideosApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{VideoArticle}, OpenAPI.Clients.ApiResponse <br/>
> videos(_api::VideosApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{VideoArticle} }, OpenAPI.Clients.ApiResponse

Articles with a video

This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain 24 articles by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **VideosApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 24]

### Return type

[**Vector{VideoArticle}**](VideoArticle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

