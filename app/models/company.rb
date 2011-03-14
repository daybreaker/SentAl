class Company < ActiveRecord::Base
  
  has_many :sentiments
  
  def refresh_sentiment    
    sentiment = sentimentSearch(term)
    sent = Sentiment.new
    sent.index = sentiment['sentiment_index'].to_f
    sent.positive = sentiment['positive'].to_i
    sent.negative = sentiment['negative'].to_i
    sent.nuetral = sentiment['neutral'].to_i
    sent.last_refresh = Date.today    
    self.sentiments << sent
    self.save
  end
  
  
  def sentiment
    self.sentiments.last
  end
end
