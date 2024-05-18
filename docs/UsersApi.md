# UsersApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_org_users**](UsersApi.md#get_org_users) | **GET** /organizations/{username}/users | Organization&#39;s users
[**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | A User
[**get_user_all_articles**](UsersApi.md#get_user_all_articles) | **GET** /articles/me/all | User&#39;s all articles
[**get_user_articles**](UsersApi.md#get_user_articles) | **GET** /articles/me | User&#39;s articles
[**get_user_me**](UsersApi.md#get_user_me) | **GET** /users/me | The authenticated user
[**get_user_published_articles**](UsersApi.md#get_user_published_articles) | **GET** /articles/me/published | User&#39;s published articles
[**get_user_unpublished_articles**](UsersApi.md#get_user_unpublished_articles) | **GET** /articles/me/unpublished | User&#39;s unpublished articles
[**post_admin_users_create**](UsersApi.md#post_admin_users_create) | **POST** /admin/users | Invite a User
[**suspend_user**](UsersApi.md#suspend_user) | **PUT** /users/{id}/suspend | Suspend a User
[**unpublish_user**](UsersApi.md#unpublish_user) | **PUT** /users/{id}/unpublish | Unpublish a User&#39;s Articles and Comments


# **get_org_users**
> get_org_users(_api::UsersApi, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> get_org_users(_api::UsersApi, response_stream::Channel, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

Organization's users

This endpoint allows the client to retrieve a list of users belonging to the organization  It supports pagination, each page will contain `30` users by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**username** | **String**|  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 30]

### Return type

[**Vector{User}**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user**
> get_user(_api::UsersApi, id::String; _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> get_user(_api::UsersApi, response_stream::Channel, id::String; _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

A User

This endpoint allows the client to retrieve a single user, either by id or by the user's username.  For complete documentation, see the v0 API docs: https://developers.forem.com/api/v0#tag/users/operation/getUser

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**id** | **String**|  | [default to nothing]

### Return type

[**Vector{User}**](User.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_all_articles**
> get_user_all_articles(_api::UsersApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_all_articles(_api::UsersApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's all articles

This endpoint allows the client to retrieve a list of all articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  It will return both published and unpublished articles with pagination.  Unpublished articles will be at the top of the list in reverse chronological creation order. Published articles will follow in reverse chronological publication order.  By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

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

# **get_user_articles**
> get_user_articles(_api::UsersApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_articles(_api::UsersApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's articles

This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

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

# **get_user_me**
> get_user_me(_api::UsersApi; _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> get_user_me(_api::UsersApi, response_stream::Channel; _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

The authenticated user

This endpoint allows the client to retrieve information about the authenticated user

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vector{User}**](User.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_published_articles**
> get_user_published_articles(_api::UsersApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_published_articles(_api::UsersApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's published articles

This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

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

# **get_user_unpublished_articles**
> get_user_unpublished_articles(_api::UsersApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_unpublished_articles(_api::UsersApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's unpublished articles

This endpoint allows the client to retrieve a list of unpublished articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Unpublished articles will be in reverse chronological creation order.  It will return unpublished articles with pagination. By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

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

# **post_admin_users_create**
> post_admin_users_create(_api::UsersApi; user_invite_param=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> post_admin_users_create(_api::UsersApi, response_stream::Channel; user_invite_param=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Invite a User

This endpoint allows the client to trigger an invitation to the provided email address.          It requires a token from a user with `super_admin` privileges.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_invite_param** | [**UserInviteParam**](UserInviteParam.md)|  | 

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **suspend_user**
> suspend_user(_api::UsersApi, id::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> suspend_user(_api::UsersApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Suspend a User

This endpoint allows the client to suspend a user.  The user associated with the API key must have any 'admin' or 'moderator' role.  This specified user will be assigned the 'suspended' role. Suspending a user will stop the user from posting new posts and comments. It doesn't delete any of the user's content, just prevents them from creating new content while suspended. Users are not notified of their suspension in the UI, so if you want them to know about this, you must notify them.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**id** | **Int64**| The ID of the user to suspend. | [default to nothing]

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **unpublish_user**
> unpublish_user(_api::UsersApi, id::Int64; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> unpublish_user(_api::UsersApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Unpublish a User's Articles and Comments

This endpoint allows the client to unpublish all of the articles and comments created by a user.  The user associated with the API key must have any 'admin' or 'moderator' role.  This specified user's articles and comments will be unpublished and will no longer be visible to the public. They will remain in the database and will set back to draft status on the specified user's  dashboard. Any notifications associated with the specified user's articles and comments will be deleted.  Note this endpoint unpublishes articles and comments asychronously: it will return a 204 NO CONTENT status code immediately, but the articles and comments will not be unpublished until the request is completed on the server.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **UsersApi** | API context | 
**id** | **Int64**| The ID of the user to unpublish. | [default to nothing]

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

