# TagsApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_followed_tags**](TagsApi.md#get_followed_tags) | **GET** /follows/tags | Followed Tags
[**get_tags**](TagsApi.md#get_tags) | **GET** /tags | Tags


# **get_followed_tags**
> get_followed_tags(_api::TagsApi; _mediaType=nothing) -> Vector{FollowedTag}, OpenAPI.Clients.ApiResponse <br/>
> get_followed_tags(_api::TagsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{FollowedTag} }, OpenAPI.Clients.ApiResponse

Followed Tags

This endpoint allows the client to retrieve a list of the tags they follow.

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{FollowedTag}**](FollowedTag.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_tags**
> get_tags(_api::TagsApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{Tag}, OpenAPI.Clients.ApiResponse <br/>
> get_tags(_api::TagsApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{Tag} }, OpenAPI.Clients.ApiResponse

Tags

This endpoint allows the client to retrieve a list of tags that can be used to tag articles.  It will return tags ordered by popularity.  It supports pagination, each page will contain 10 tags by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **TagsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 10]

### Return type

[**Vector{Tag}**](Tag.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

