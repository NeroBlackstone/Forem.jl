# PagesPostRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** | Title of the page | [optional] [default to nothing]
**slug** | **String** | Used to link to this page in URLs, must be unique and URL-safe | [optional] [default to nothing]
**description** | **String** | For internal use, helps similar pages from one another | [optional] [default to nothing]
**body_markdown** | **String** | The text (in markdown) of the ad (required) | [optional] [default to nothing]
**body_json** | **String** | For JSON pages, the JSON body | [optional] [default to nothing]
**is_top_level_path** | **Bool** | If true, the page is available at &#39;/{slug}&#39; instead of &#39;/page/{slug}&#39;, use with caution | [optional] [default to nothing]
**template** | **String** | Controls what kind of layout the page is rendered in | [optional] [default to "contained"]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


