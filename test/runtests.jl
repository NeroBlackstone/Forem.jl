using Test
using Forem

@testset "KEY" begin
	articles_api = init_api(APIClient.ArticlesApi)
    @test length(first(get_articles(articles_api;tag="julia",per_page=1))) == 1
end