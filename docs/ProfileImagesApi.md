# ProfileImagesApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_profile_image**](ProfileImagesApi.md#get_profile_image) | **GET** /profile_images/{username} | A Users or organizations profile image


# **get_profile_image**
> get_profile_image(_api::ProfileImagesApi, username::String; _mediaType=nothing) -> Vector{ProfileImage}, OpenAPI.Clients.ApiResponse <br/>
> get_profile_image(_api::ProfileImagesApi, response_stream::Channel, username::String; _mediaType=nothing) -> Channel{ Vector{ProfileImage} }, OpenAPI.Clients.ApiResponse

A Users or organizations profile image

This endpoint allows the client to retrieve a user or organization profile image information by its         corresponding username.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ProfileImagesApi** | API context | 
**username** | **String**| The parameter is the username of the user or the username of the organization. | [default to nothing]

### Return type

[**Vector{ProfileImage}**](ProfileImage.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

