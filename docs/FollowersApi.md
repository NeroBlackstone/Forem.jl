# FollowersApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_followers**](FollowersApi.md#get_followers) | **GET** /followers/users | Followers


# **get_followers**
> get_followers(_api::FollowersApi; page=nothing, per_page=nothing, sort=nothing, _mediaType=nothing) -> Vector{GetFollowers200ResponseInner}, OpenAPI.Clients.ApiResponse <br/>
> get_followers(_api::FollowersApi, response_stream::Channel; page=nothing, per_page=nothing, sort=nothing, _mediaType=nothing) -> Channel{ Vector{GetFollowers200ResponseInner} }, OpenAPI.Clients.ApiResponse

Followers

This endpoint allows the client to retrieve a list of the followers they have.         \"Followers\" are users that are following other users on the website.         It supports pagination, each page will contain 80 followers by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **FollowersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 30]
 **sort** | **String**| Default is &#39;created_at&#39;. Specifies the sort order for the created_at param of the follow                                 relationship. To sort by newest followers first (descending order) specify                                 ?sort&#x3D;-created_at. | [default to nothing]

### Return type

[**Vector{GetFollowers200ResponseInner}**](GetFollowers200ResponseInner.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

