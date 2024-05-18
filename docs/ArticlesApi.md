# ArticlesApi

All URIs are relative to *https://dev.to/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_article**](ArticlesApi.md#create_article) | **POST** /articles | Publish article
[**get_article_by_id**](ArticlesApi.md#get_article_by_id) | **GET** /articles/{id} | Published article by id
[**get_article_by_path**](ArticlesApi.md#get_article_by_path) | **GET** /articles/{username}/{slug} | Published article by path
[**get_articles**](ArticlesApi.md#get_articles) | **GET** /articles | Published articles
[**get_latest_articles**](ArticlesApi.md#get_latest_articles) | **GET** /articles/latest | Published articles sorted by published date
[**get_org_articles**](ArticlesApi.md#get_org_articles) | **GET** /organizations/{username}/articles | Organization&#39;s Articles
[**get_user_all_articles**](ArticlesApi.md#get_user_all_articles) | **GET** /articles/me/all | User&#39;s all articles
[**get_user_articles**](ArticlesApi.md#get_user_articles) | **GET** /articles/me | User&#39;s articles
[**get_user_published_articles**](ArticlesApi.md#get_user_published_articles) | **GET** /articles/me/published | User&#39;s published articles
[**get_user_unpublished_articles**](ArticlesApi.md#get_user_unpublished_articles) | **GET** /articles/me/unpublished | User&#39;s unpublished articles
[**unpublish_article**](ArticlesApi.md#unpublish_article) | **PUT** /articles/{id}/unpublish | Unpublish an article
[**update_article**](ArticlesApi.md#update_article) | **PUT** /articles/{id} | Update an article by id
[**videos**](ArticlesApi.md#videos) | **GET** /videos | Articles with a video


# **create_article**
> create_article(_api::ArticlesApi; article=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> create_article(_api::ArticlesApi, response_stream::Channel; article=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Publish article

This endpoint allows the client to create a new article.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article** | [**Article**](Article.md)|  | 

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_article_by_id**
> get_article_by_id(_api::ArticlesApi, id::Int64; _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_article_by_id(_api::ArticlesApi, response_stream::Channel, id::Int64; _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

Published article by id

This endpoint allows the client to retrieve a single published article given its `id`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 
**id** | **Int64**|  | [default to nothing]

### Return type

[**Vector{ArticleIndex}**](ArticleIndex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_article_by_path**
> get_article_by_path(_api::ArticlesApi, username::String, slug::String; _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_article_by_path(_api::ArticlesApi, response_stream::Channel, username::String, slug::String; _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

Published article by path

This endpoint allows the client to retrieve a single published article given its `path`.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 
**username** | **String**|  | [default to nothing]
**slug** | **String**|  | [default to nothing]

### Return type

[**Vector{ArticleIndex}**](ArticleIndex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_articles**
> get_articles(_api::ArticlesApi; page=nothing, per_page=nothing, tag=nothing, tags=nothing, tags_exclude=nothing, username=nothing, state=nothing, top=nothing, collection_id=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_articles(_api::ArticlesApi, response_stream::Channel; page=nothing, per_page=nothing, tag=nothing, tags=nothing, tags_exclude=nothing, username=nothing, state=nothing, top=nothing, collection_id=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

Published articles

This endpoint allows the client to retrieve a list of articles.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  By default it will return featured, published articles ordered by descending popularity.  It supports pagination, each page will contain `30` articles by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Int64**| Pagination page | [default to 1]
 **per_page** | **Int64**| Page size (the number of items to return per page). The default maximum value can be overridden by \&quot;API_PER_PAGE_MAX\&quot; environment variable. | [default to 30]
 **tag** | **String**| Using this parameter will retrieve articles that contain the requested tag. Articles will be ordered by descending popularity.This parameter can be used in conjuction with &#x60;top&#x60;. | [default to nothing]
 **tags** | **String**| Using this parameter will retrieve articles with any of the comma-separated tags. Articles will be ordered by descending popularity. | [default to nothing]
 **tags_exclude** | **String**| Using this parameter will retrieve articles that do _not_ contain _any_ of comma-separated tags. Articles will be ordered by descending popularity. | [default to nothing]
 **username** | **String**| Using this parameter will retrieve articles belonging             to a User or Organization ordered by descending publication date.             If &#x60;state&#x3D;all&#x60; the number of items returned will be &#x60;1000&#x60; instead of the default &#x60;30&#x60;.             This parameter can be used in conjuction with &#x60;state&#x60;. | [default to nothing]
 **state** | **String**| Using this parameter will allow the client to check which articles are fresh or rising.             If &#x60;state&#x3D;fresh&#x60; the server will return fresh articles.             If &#x60;state&#x3D;rising&#x60; the server will return rising articles.             This param can be used in conjuction with &#x60;username&#x60;, only if set to &#x60;all&#x60;. | [default to nothing]
 **top** | **Int64**| Using this parameter will allow the client to return the most popular articles in the last &#x60;N&#x60; days. &#x60;top&#x60; indicates the number of days since publication of the articles returned. This param can be used in conjuction with &#x60;tag&#x60;. | [default to nothing]
 **collection_id** | **Int64**| Adding this will allow the client to return the list of articles belonging to the requested collection, ordered by ascending publication date. | [default to nothing]

### Return type

[**Vector{ArticleIndex}**](ArticleIndex.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_latest_articles**
> get_latest_articles(_api::ArticlesApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_latest_articles(_api::ArticlesApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

Published articles sorted by published date

This endpoint allows the client to retrieve a list of articles. ordered by descending publish date.  It supports pagination, each page will contain 30 articles by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

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

# **get_org_articles**
> get_org_articles(_api::ArticlesApi, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_org_articles(_api::ArticlesApi, response_stream::Channel, username::String; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

Organization's Articles

This endpoint allows the client to retrieve a list of Articles belonging to the organization  It supports pagination, each page will contain `30` users by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 
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

# **get_user_all_articles**
> get_user_all_articles(_api::ArticlesApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_all_articles(_api::ArticlesApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's all articles

This endpoint allows the client to retrieve a list of all articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  It will return both published and unpublished articles with pagination.  Unpublished articles will be at the top of the list in reverse chronological creation order. Published articles will follow in reverse chronological publication order.  By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

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
> get_user_articles(_api::ArticlesApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_articles(_api::ArticlesApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's articles

This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

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

# **get_user_published_articles**
> get_user_published_articles(_api::ArticlesApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_published_articles(_api::ArticlesApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's published articles

This endpoint allows the client to retrieve a list of published articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Published articles will be in reverse chronological publication order.  It will return published articles with pagination. By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

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
> get_user_unpublished_articles(_api::ArticlesApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{ArticleIndex}, OpenAPI.Clients.ApiResponse <br/>
> get_user_unpublished_articles(_api::ArticlesApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{ArticleIndex} }, OpenAPI.Clients.ApiResponse

User's unpublished articles

This endpoint allows the client to retrieve a list of unpublished articles on behalf of an authenticated user.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.  Unpublished articles will be in reverse chronological creation order.  It will return unpublished articles with pagination. By default a page will contain 30 articles.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

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

# **unpublish_article**
> unpublish_article(_api::ArticlesApi, id::Int64; note=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> unpublish_article(_api::ArticlesApi, response_stream::Channel, id::Int64; note=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Unpublish an article

This endpoint allows the client to unpublish an article.  The user associated with the API key must have any 'admin' or 'moderator' role.  The article will be unpublished and will no longer be visible to the public. It will remain in the database and will set back to draft status on the author's posts dashboard. Any notifications associated with the article will be deleted. Any comments on the article will remain.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 
**id** | **Int64**| The ID of the article to unpublish. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **note** | **String**| Content for the note that&#39;s created along with unpublishing | [default to nothing]

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_article**
> update_article(_api::ArticlesApi, id::Int64; article=nothing, _mediaType=nothing) -> Nothing, OpenAPI.Clients.ApiResponse <br/>
> update_article(_api::ArticlesApi, response_stream::Channel, id::Int64; article=nothing, _mediaType=nothing) -> Channel{ Nothing }, OpenAPI.Clients.ApiResponse

Update an article by id

This endpoint allows the client to update an existing article.  \"Articles\" are all the posts that users create on DEV that typically show up in the feed. They can be a blog post, a discussion question, a help thread etc. but is referred to as article within the code.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 
**id** | **Int64**| The ID of the user to unpublish. | [default to nothing]

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **article** | [**Article**](Article.md)|  | 

### Return type

Nothing

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **videos**
> videos(_api::ArticlesApi; page=nothing, per_page=nothing, _mediaType=nothing) -> Vector{VideoArticle}, OpenAPI.Clients.ApiResponse <br/>
> videos(_api::ArticlesApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing) -> Channel{ Vector{VideoArticle} }, OpenAPI.Clients.ApiResponse

Articles with a video

This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain 24 articles by default.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **ArticlesApi** | API context | 

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

