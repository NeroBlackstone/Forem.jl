# OrganizationsApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_org_articles**](OrganizationsApi.md#get_org_articles) | **GET** /organizations/{username}/articles | Organization&#39;s Articles
[**get_org_users**](OrganizationsApi.md#get_org_users) | **GET** /organizations/{username}/users | Organization&#39;s users
[**get_organization**](OrganizationsApi.md#get_organization) | **GET** /organizations/{username} | An organization


# **get_org_articles**
> get_org_articles(_api::OrganizationsApi, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_org_articles(_api::OrganizationsApi, response_stream::Channel, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

Organization's Articles

This endpoint allows the client to retrieve a list of Articles belonging to the organization  It supports pagination, each page will contain `30` users by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrganizationsApi** | API context | 
**username** | **String**|  | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 30]

### Return type

[**Vector{ArticleIndex}**](ArticleIndex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_org_users**
> get_org_users(_api::OrganizationsApi, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{User}, OpenAPI.Clients.ApiResponse <br/>
> get_org_users(_api::OrganizationsApi, response_stream::Channel, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{User} }, OpenAPI.Clients.ApiResponse

Organization's users

This endpoint allows the client to retrieve a list of users belonging to the organization  It supports pagination, each page will contain `30` users by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrganizationsApi** | API context | 
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

# **get_organization**
> get_organization(_api::OrganizationsApi, username::String; _mediaType=nothing) -> Vector{Organization}, OpenAPI.Clients.ApiResponse <br/>
> get_organization(_api::OrganizationsApi, response_stream::Channel, username::String; _mediaType=nothing) -> Channel{ Vector{Organization} }, OpenAPI.Clients.ApiResponse

An organization

This endpoint allows the client to retrieve a single organization by their username

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **OrganizationsApi** | API context | 
**username** | **String**|  | [default to nothing]

### Return type

[**Vector{Organization}**](Organization.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

