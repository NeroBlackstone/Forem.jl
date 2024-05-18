# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""_pages_post_request

    PagesPostRequest(;
        title=nothing,
        slug=nothing,
        description=nothing,
        body_markdown=nothing,
        body_json=nothing,
        is_top_level_path=nothing,
        template="contained",
    )

    - title::String : Title of the page
    - slug::String : Used to link to this page in URLs, must be unique and URL-safe
    - description::String : For internal use, helps similar pages from one another
    - body_markdown::String : The text (in markdown) of the ad (required)
    - body_json::String : For JSON pages, the JSON body
    - is_top_level_path::Bool : If true, the page is available at &#39;/{slug}&#39; instead of &#39;/page/{slug}&#39;, use with caution
    - template::String : Controls what kind of layout the page is rendered in
"""
Base.@kwdef mutable struct PagesPostRequest <: OpenAPI.APIModel
    title::Union{Nothing, String} = nothing
    slug::Union{Nothing, String} = nothing
    description::Union{Nothing, String} = nothing
    body_markdown::Union{Nothing, String} = nothing
    body_json::Union{Nothing, String} = nothing
    is_top_level_path::Union{Nothing, Bool} = nothing
    template::Union{Nothing, String} = "contained"

    function PagesPostRequest(title, slug, description, body_markdown, body_json, is_top_level_path, template, )
        OpenAPI.validate_property(PagesPostRequest, Symbol("title"), title)
        OpenAPI.validate_property(PagesPostRequest, Symbol("slug"), slug)
        OpenAPI.validate_property(PagesPostRequest, Symbol("description"), description)
        OpenAPI.validate_property(PagesPostRequest, Symbol("body_markdown"), body_markdown)
        OpenAPI.validate_property(PagesPostRequest, Symbol("body_json"), body_json)
        OpenAPI.validate_property(PagesPostRequest, Symbol("is_top_level_path"), is_top_level_path)
        OpenAPI.validate_property(PagesPostRequest, Symbol("template"), template)
        return new(title, slug, description, body_markdown, body_json, is_top_level_path, template, )
    end
end # type PagesPostRequest

const _property_types_PagesPostRequest = Dict{Symbol,String}(Symbol("title")=>"String", Symbol("slug")=>"String", Symbol("description")=>"String", Symbol("body_markdown")=>"String", Symbol("body_json")=>"String", Symbol("is_top_level_path")=>"Bool", Symbol("template")=>"String", )
OpenAPI.property_type(::Type{ PagesPostRequest }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_PagesPostRequest[name]))}

function check_required(o::PagesPostRequest)
    true
end

function OpenAPI.validate_property(::Type{ PagesPostRequest }, name::Symbol, val)
    if name === Symbol("template")
        OpenAPI.validate_param(name, "PagesPostRequest", :enum, val, ["contained", "full_within_layout", "nav_bar_included", "json"])
    end
end
