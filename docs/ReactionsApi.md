# ReactionsApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reactions_post**](ReactionsApi.md#reactions_post) | **POST** /reactions | create reaction
[**reactions_toggle_post**](ReactionsApi.md#reactions_toggle_post) | **POST** /reactions/toggle | toggle reaction


# **reactions_post**
> reactions_post(_api::ReactionsApi, category::String, reactable_id::Int64, reactable_type::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> reactions_post(_api::ReactionsApi, response_stream::Channel, category::String, reactable_id::Int64, reactable_type::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

create reaction

This endpoint allows the client to create a reaction to a specified reactable (eg, Article, Comment, or User). For examples:         * \"Like\"ing an Article will create a new \"like\" Reaction from the user for that Articles         * \"Like\"ing that Article a second time will return the previous \"like\"

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ReactionsApi** | API context | 
**category** | **String**|  | [default to nothing]
**reactable_id** | **Int64**|  | [default to nothing]
**reactable_type** | **String**|  | [default to nothing]

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **reactions_toggle_post**
> reactions_toggle_post(_api::ReactionsApi, category::String, reactable_id::Int64, reactable_type::String; _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> reactions_toggle_post(_api::ReactionsApi, response_stream::Channel, category::String, reactable_id::Int64, reactable_type::String; _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

toggle reaction

This endpoint allows the client to toggle the user's reaction to a specified reactable (eg, Article, Comment, or User). For examples:         * \"Like\"ing an Article will create a new \"like\" Reaction from the user for that Articles         * \"Like\"ing that Article a second time will remove the \"like\" from the user

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ReactionsApi** | API context | 
**category** | **String**|  | [default to nothing]
**reactable_id** | **Int64**|  | [default to nothing]
**reactable_type** | **String**|  | [default to nothing]

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

