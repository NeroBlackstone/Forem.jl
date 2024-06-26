# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct FollowersApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `FollowersApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ FollowersApi }) = "https://dev.to/api"

const _returntypes_get_followers_FollowersApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{GetFollowers200ResponseInner},
    Regex("^" * replace("401", "x"=>".") * "\$") => Nothing,
)

function _oacinternal_get_followers(_api::FollowersApi; page=nothing, per_page=nothing, sort=nothing, _mediaType=nothing)
    OpenAPI.validate_param("page", "get_followers", :minimum, page, 1, false)

    OpenAPI.validate_param("per_page", "get_followers", :maximum, per_page, 1000, false)
    OpenAPI.validate_param("per_page", "get_followers", :minimum, per_page, 1, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_get_followers_FollowersApi, "/followers/users", ["api-key", ])
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "sort", sort)  # type String
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Followers

This endpoint allows the client to retrieve a list of the followers they have.         \"Followers\" are users that are following other users on the website.         It supports pagination, each page will contain 80 followers by default.

Params:
- page::Int64
- per_page::Int64
- sort::String

Return: Vector{GetFollowers200ResponseInner}, OpenAPI.Clients.ApiResponse
"""
function get_followers(_api::FollowersApi; page=nothing, per_page=nothing, sort=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_followers(_api; page=page, per_page=per_page, sort=sort, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function get_followers(_api::FollowersApi, response_stream::Channel; page=nothing, per_page=nothing, sort=nothing, _mediaType=nothing)
    _ctx = _oacinternal_get_followers(_api; page=page, per_page=per_page, sort=sort, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export get_followers
