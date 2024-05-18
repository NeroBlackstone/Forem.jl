# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct TagsApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `TagsApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ TagsApi }) = "https://dev.to/api"

const _returntypes_get_followed_tags_TagsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{FollowedTag},
    Regex("^" * replace("401", "x"=>".") * "\$") => Nothing,
)

function _oacinternal_get_followed_tags(_api::TagsApi; _mediaType=nothing)
    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_followed_tags_TagsApi, "/follows/tags", ["api-key", ])
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Followed Tags

This endpoint allows the client to retrieve a list of the tags they follow.

Params:

Return: Vector{FollowedTag}, OpenAPI.Clients.ApiResponse
"""
function get_followed_tags(_api::TagsApi; _mediaType=nothing)
    _ctx = _oacinternal_get_followed_tags(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_followed_tags(_api::TagsApi, response_stream::Channel; _mediaType=nothing)
    _ctx = _oacinternal_get_followed_tags(_api; _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

const _returntypes_get_tags_TagsApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{Tag},
)

function _oacinternal_get_tags(_api::TagsApi; page=nothing, per_page=nothing, _mediaType=nothing)
    OpenAPI.validate_param("page", "get_tags", :minimum, page, 1, false)

    OpenAPI.validate_param("per_page", "get_tags", :maximum, per_page, 1000, false)
    OpenAPI.validate_param("per_page", "get_tags", :minimum, per_page, 1, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_tags_TagsApi, "/tags", [])
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Tags

This endpoint allows the client to retrieve a list of tags that can be used to tag articles.  It will return tags ordered by popularity.  It supports pagination, each page will contain 10 tags by default.

Params:
- page::Int64
- per_page::Int64

Return: Vector{Tag}, OpenAPI.Clients.ApiResponse
"""
function get_tags(_api::TagsApi; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_tags(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_tags(_api::TagsApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_tags(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export get_followed_tags
export get_tags