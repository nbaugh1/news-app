require 'news-api'

# Init
def init
    newsapi = News.new("f59463c6813c403bb187dbb78fc92e2c")             
end
# /v2/top-headlines
top_headlines = newsapi.get_top_headlines(q: 'bitcoin',
                                          sources: 'bbc-news,the-verge',
                                          category: 'business',
                                          language: 'en',
                                          country: 'us')

# /v2/everything
all_articles = newsapi.get_everything(q: 'bitcoin',
                                      sources: 'bbc-news,the-verge',
                                      domains: 'bbc.co.uk,techcrunch.com',
                                      from: '2017-12-01',
                                      to: '2017-12-12',
                                      language: 'en',
                                      sortBy: 'relevancy',
                                      page: 2))

# /v2/sources
sources = newsapi.get_sources(country: 'us', language: 'en')