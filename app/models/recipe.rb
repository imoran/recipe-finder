class Recipe
  include HTTParty

  ENV["FOOD2FORK_KEY"] = '8edae194a4bc84e64e34bd8e90119cf1'
  base_uri 'http://food2fork.com/api'
  default_params key: ENV["FOOD2FORK_KEY"]
  format :json

  def self.for(keyword)
    get('/search', query: {q: keyword})['recipes']
  end
end
