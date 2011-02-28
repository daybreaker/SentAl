# TwitterSentimentAp
require 'rubygems'
require 'json'
require 'net/http'

# Sentiments on tweets
# http://data.tweetsentiments.com:8080/api/search.json?topic=<topic to analyze>
def sentimentAnalyze(term)
  url = "http://data.tweetsentiments.com:8080/api/analyze.json?q=#{term}"
  resp(url)
end

# Sentiments on topics
# http://data.tweetsentiments.com:8080/api/search.json?topic=<topic to analyze>
def sentimentSearch(term)
  url = "http://data.tweetsentiments.com:8080/api/search.json?topic=#{term}"
  resp(url)
end

# Sentiments on users
# http://data.tweetsentiments.com:8080/api/search.json?user=<user to analyze>
def sentimentUser(term)
  url = "http://data.tweetsentiments.com:8080/api/search.json?user=#{term}"
  resp(url)
end

def resp(url)
  resp = Net::HTTP.get_response(URI.parse(url))
  data = resp.body
  result = JSON.parse(data)
end