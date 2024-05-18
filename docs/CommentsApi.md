# CommentsApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_comment_by_id**](CommentsApi.md#get_comment_by_id) | **GET** /comments/{id} | Comment by id
[**get_comments_by_article_id**](CommentsApi.md#get_comments_by_article_id) | **GET** /comments | Comments


# **get_comment_by_id**
> get_comment_by_id(_api::CommentsApi, id::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> get_comment_by_id(_api::CommentsApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Comment by id

This endpoint allows the client to retrieve a comment as well as his descendants comments.    It will return the required comment (the root) with its nested descendants as a thread.    See the format specification for further details.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommentsApi** | API context | 
**id** | **Int64**| Comment identifier. | [default to nothing]

### Return type

Nothing

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_comments_by_article_id**
> get_comments_by_article_id(_api::CommentsApi; a_id=nothing, p_id=nothing, _mediaType=nothing) -> Vector{Comment}, OpenAPI.Clients.ApiResponse <br/>
> get_comments_by_article_id(_api::CommentsApi, response_stream::Channel; a_id=nothing, p_id=nothing, _mediaType=nothing) -> Channel{ Vector{Comment} }, OpenAPI.Clients.ApiResponse

Comments

This endpoint allows the client to retrieve all comments belonging to an article or podcast episode as threaded conversations.  It will return the all top level comments with their nested comments as threads. See the format specification for further details.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **CommentsApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **a_id** | **String**| Article identifier. | [default to nothing]
 **p_id** | **String**| Podcast Episode identifier. | [default to nothing]

### Return type

[**Vector{Comment}**](Comment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

