# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""VideoArticle
Representation of an Article with video

    VideoArticle(;
        type_of=nothing,
        id=nothing,
        path=nothing,
        cloudinary_video_url=nothing,
        title=nothing,
        user_id=nothing,
        video_duration_in_minutes=nothing,
        video_source_url=nothing,
        user=nothing,
    )

    - type_of::String
    - id::Int64
    - path::String
    - cloudinary_video_url::String
    - title::String
    - user_id::Int64
    - video_duration_in_minutes::String
    - video_source_url::String
    - user::VideoArticleUser
"""
Base.@kwdef mutable struct VideoArticle <: OpenAPI.APIModel
    type_of::Union{Nothing, String} = nothing
    id::Union{Nothing, Int64} = nothing
    path::Union{Nothing, String} = nothing
    cloudinary_video_url::Union{Nothing, String} = nothing
    title::Union{Nothing, String} = nothing
    user_id::Union{Nothing, Int64} = nothing
    video_duration_in_minutes::Union{Nothing, String} = nothing
    video_source_url::Union{Nothing, String} = nothing
    user = nothing # spec type: Union{ Nothing, VideoArticleUser }

    function VideoArticle(type_of, id, path, cloudinary_video_url, title, user_id, video_duration_in_minutes, video_source_url, user, )
        OpenAPI.validate_property(VideoArticle, Symbol("type_of"), type_of)
        OpenAPI.validate_property(VideoArticle, Symbol("id"), id)
        OpenAPI.validate_property(VideoArticle, Symbol("path"), path)
        OpenAPI.validate_property(VideoArticle, Symbol("cloudinary_video_url"), cloudinary_video_url)
        OpenAPI.validate_property(VideoArticle, Symbol("title"), title)
        OpenAPI.validate_property(VideoArticle, Symbol("user_id"), user_id)
        OpenAPI.validate_property(VideoArticle, Symbol("video_duration_in_minutes"), video_duration_in_minutes)
        OpenAPI.validate_property(VideoArticle, Symbol("video_source_url"), video_source_url)
        OpenAPI.validate_property(VideoArticle, Symbol("user"), user)
        return new(type_of, id, path, cloudinary_video_url, title, user_id, video_duration_in_minutes, video_source_url, user, )
    end
end # type VideoArticle

const _property_types_VideoArticle = Dict{Symbol,String}(Symbol("type_of")=>"String", Symbol("id")=>"Int64", Symbol("path")=>"String", Symbol("cloudinary_video_url")=>"String", Symbol("title")=>"String", Symbol("user_id")=>"Int64", Symbol("video_duration_in_minutes")=>"String", Symbol("video_source_url")=>"String", Symbol("user")=>"VideoArticleUser", )
OpenAPI.property_type(::Type{ VideoArticle }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_VideoArticle[name]))}

function check_required(o::VideoArticle)
    true
end

function OpenAPI.validate_property(::Type{ VideoArticle }, name::Symbol, val)
    if name === Symbol("id")
        OpenAPI.validate_param(name, "VideoArticle", :format, val, "int64")
    end
    if name === Symbol("user_id")
        OpenAPI.validate_param(name, "VideoArticle", :format, val, "int64")
    end
end
