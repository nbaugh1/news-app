class NewsApi
    require "json"
    require "http"

    API_HOST = "https://newsapi.org/v2/"
    API_KEY = "f59463c6813c403bb187dbb78fc92e2c"

# /v2/top-headlines
    def self.top_headlines
        url = "#{API_HOST}top-headines"
        params = { 
            }
            response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
    end

# /v2/everything
        def self.all_articles
            all_articles = newsapi.get_everything(q: 'bitcoin',
                sources: 'bbc-news,the-verge',
                domains: 'bbc.co.uk,techcrunch.com',
                from: '2017-12-01',
                to: '2017-12-12',
                language: 'en',
                sortBy: 'relevancy',
                page: 2)
        end

# /v2/sources
        def self.sources
            sources = newsapi.get_sources(country: 'us', language: 'en')
        end
end