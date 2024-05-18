# PodcastEpisodesApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_podcast_episodes**](PodcastEpisodesApi.md#get_podcast_episodes) | **GET** /podcast_episodes | Podcast Episodes


# **get_podcast_episodes**
> get_podcast_episodes(_api::PodcastEpisodesApi; page=nothing, per_page=nothing, username=nothing, _mediaType=nothing) -> Vector{PodcastEpisodeIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_podcast_episodes(_api::PodcastEpisodesApi, response_stream::Channel; page=nothing, per_page=nothing, username=nothing, _mediaType=nothing) -> Channel{ Vector{PodcastEpisodeIndex} }, OpenAPI.Clients.ApiResponse

Podcast Episodes

This endpoint allows the client to retrieve a list of podcast episodes.         \"Podcast episodes\" are episodes belonging to podcasts.         It will only return active (reachable) podcast episodes that belong to published podcasts available on the platform, ordered by descending publication date.         It supports pagination, each page will contain 30 articles by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **PodcastEpisodesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 30]
 **username** | **String**| Using this parameter will retrieve episodes belonging to a specific podcast. | [default to nothing]

### Return type

[**Vector{PodcastEpisodeIndex}**](PodcastEpisodeIndex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

