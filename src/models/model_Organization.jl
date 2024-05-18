# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Organization
Representation of an Organization

    Organization(;
        type_of=nothing,
        username=nothing,
        name=nothing,
        summary=nothing,
        twitter_username=nothing,
        github_username=nothing,
        url=nothing,
        location=nothing,
        joined_at=nothing,
        tech_stack=nothing,
        tag_line=nothing,
        story=nothing,
    )

    - type_of::String
    - username::String
    - name::String
    - summary::String
    - twitter_username::String
    - github_username::String
    - url::String
    - location::String
    - joined_at::String
    - tech_stack::String
    - tag_line::String
    - story::String
"""
Base.@kwdef mutable struct Organization <: OpenAPI.APIModel
    type_of::Union{Nothing, String} = nothing
    username::Union{Nothing, String} = nothing
    name::Union{Nothing, String} = nothing
    summary::Union{Nothing, String} = nothing
    twitter_username::Union{Nothing, String} = nothing
    github_username::Union{Nothing, String} = nothing
    url::Union{Nothing, String} = nothing
    location::Union{Nothing, String} = nothing
    joined_at::Union{Nothing, String} = nothing
    tech_stack::Union{Nothing, String} = nothing
    tag_line::Union{Nothing, String} = nothing
    story::Union{Nothing, String} = nothing

    function Organization(type_of, username, name, summary, twitter_username, github_username, url, location, joined_at, tech_stack, tag_line, story, )
        OpenAPI.validate_property(Organization, Symbol("type_of"), type_of)
        OpenAPI.validate_property(Organization, Symbol("username"), username)
        OpenAPI.validate_property(Organization, Symbol("name"), name)
        OpenAPI.validate_property(Organization, Symbol("summary"), summary)
        OpenAPI.validate_property(Organization, Symbol("twitter_username"), twitter_username)
        OpenAPI.validate_property(Organization, Symbol("github_username"), github_username)
        OpenAPI.validate_property(Organization, Symbol("url"), url)
        OpenAPI.validate_property(Organization, Symbol("location"), location)
        OpenAPI.validate_property(Organization, Symbol("joined_at"), joined_at)
        OpenAPI.validate_property(Organization, Symbol("tech_stack"), tech_stack)
        OpenAPI.validate_property(Organization, Symbol("tag_line"), tag_line)
        OpenAPI.validate_property(Organization, Symbol("story"), story)
        return new(type_of, username, name, summary, twitter_username, github_username, url, location, joined_at, tech_stack, tag_line, story, )
    end
end # type Organization

const _property_types_Organization = Dict{Symbol,String}(Symbol("type_of")=>"String", Symbol("username")=>"String", Symbol("name")=>"String", Symbol("summary")=>"String", Symbol("twitter_username")=>"String", Symbol("github_username")=>"String", Symbol("url")=>"String", Symbol("location")=>"String", Symbol("joined_at")=>"String", Symbol("tech_stack")=>"String", Symbol("tag_line")=>"String", Symbol("story")=>"String", )
OpenAPI.property_type(::Type{ Organization }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Organization[name]))}

function check_required(o::Organization)
    true
end

function OpenAPI.validate_property(::Type{ Organization }, name::Symbol, val)
end