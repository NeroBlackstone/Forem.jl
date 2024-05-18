# FollowedTagsApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_followed_tags**](FollowedTagsApi.md#get_followed_tags) | **GET** /follows/tags | Followed Tags


# **get_followed_tags**
> get_followed_tags(_api::FollowedTagsApi; _mediaType=nothing) -> Vector{FollowedTag}, OpenAPI.Clients.ApiResponse <br/>
> get_followed_tags(_api::FollowedTagsApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{FollowedTag} }, OpenAPI.Clients.ApiResponse

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

