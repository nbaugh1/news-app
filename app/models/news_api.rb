class NewsApi
    require "json"
    require "http"

    API_HOST = "https://newsapi.org/v2/"
    API_KEY = "f59463c6813c403bb187dbb78fc92e2c"

# /v2/top-headlines
    def self.top_headlines
        url = "#{API_HOST}top-headlines"
        params = { 
                language: "en"
            }
        response = HTTP.auth("f59463c6813c403bb187dbb78fc92e2c").get(url, params: params)
        response.parse["articles"]
    end

# /v2/everything
    def self.everything
        url = "#{API_HOST}everything"
        params = { 
            language: "en",
            sources: "abc-news",
        }
        response = HTTP.auth("f59463c6813c403bb187dbb78fc92e2c").get(url, params: params)
            # response.parse["articles"]
    end

# /v2/sources
    def self.sources
        url = "#{API_HOST}sources"
        params = { 
            language: "en"
        }
        response = HTTP.auth("f59463c6813c403bb187dbb78fc92e2c").get(url, params: params)
        response.parse["sources"]
    end
end