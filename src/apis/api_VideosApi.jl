# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.

struct VideosApi <: OpenAPI.APIClientImpl
    client::OpenAPI.Clients.Client
end

"""
The default API base path for APIs in `VideosApi`.
This can be used to construct the `OpenAPI.Clients.Client` instance.
"""
basepath(::Type{ VideosApi }) = "https://dev.to/api"

const _returntypes_videos_VideosApi = Dict{Regex,Type}(
    Regex("^" * replace("200", "x"=>".") * "\$") => Vector{VideoArticle},
)

function _oacinternal_videos(_api::VideosApi; page=nothing, per_page=nothing, _mediaType=nothing)
    OpenAPI.validate_param("page", "videos", :minimum, page, 1, false)

    OpenAPI.validate_param("per_page", "videos", :maximum, per_page, 1000, false)
    OpenAPI.validate_param("per_page", "videos", :minimum, per_page, 1, false)

    _ctx = OpenAPI.Clients.Ctx(_api.client, "GET", _returntypes_videos_VideosApi, "/videos", [])
    OpenAPI.Clients.set_param(_ctx.query, "page", page)  # type Int64
    OpenAPI.Clients.set_param(_ctx.query, "per_page", per_page)  # type Int64
    OpenAPI.Clients.set_header_accept(_ctx, ["application/json", ])
    OpenAPI.Clients.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    return _ctx
end

@doc raw"""Articles with a video

This endpoint allows the client to retrieve a list of articles that are uploaded with a video.  It will only return published video articles ordered by descending popularity.  It supports pagination, each page will contain 24 articles by default.

Params:
- page::Int64
- per_page::Int64

Return: Vector{VideoArticle}, OpenAPI.Clients.ApiResponse
"""
function videos(_api::VideosApi; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_videos(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx)
end

function videos(_api::VideosApi, response_stream::Channel; page=nothing, per_page=nothing, _mediaType=nothing)
    _ctx = _oacinternal_videos(_api; page=page, per_page=per_page, _mediaType=_mediaType)
    return OpenAPI.Clients.exec(_ctx, response_stream)
end

export videos
