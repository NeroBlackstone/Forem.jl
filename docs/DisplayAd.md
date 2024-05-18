# DisplayAd


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int64** | The ID of the Display Ad | [optional] [default to nothing]
**name** | **String** | For internal use, helps distinguish ads from one another | [default to nothing]
**body_markdown** | **String** | The text (in markdown) of the ad (required) | [default to nothing]
**approved** | **Bool** | Ad must be both published and approved to be in rotation | [optional] [default to nothing]
**published** | **Bool** | Ad must be both published and approved to be in rotation | [optional] [default to nothing]
**organization_id** | **Int64** | Identifies the organization to which the ad belongs | [optional] [default to nothing]
**creator_id** | **Int64** | Identifies the user who created the ad. | [optional] [default to nothing]
**placement_area** | **String** | Identifies which area of site layout the ad can appear in | [default to nothing]
**tag_list** | **String** | Tags on which this ad can be displayed (blank is all/any tags) | [optional] [default to nothing]
**article_exclude_ids** | **String** | Articles this ad should *not* appear on (blank means no articles are disallowed, and this ad can appear next to any/all articles). Comma-separated list of integer Article IDs | [optional] [default to nothing]
**audience_segment_type** | **String** | Specifies an group of users to show this ad to (only works with logged-in users) | [optional] [default to nothing]
**display_to** | **String** | Potentially limits visitors to whom the ad is visible | [optional] [default to "all"]
**type_of** | **String** | Types of the billboards: in_house (created by admins), community (created by an entity, appears on entity&#39;s content), external ( created by an entity, or a non-entity, can appear everywhere)  | [optional] [default to "in_house"]


[[Back to Model list]](../README.md#models) [[Back to API list]](../README.md#api-endpoints) [[Back to README]](../README.md)


