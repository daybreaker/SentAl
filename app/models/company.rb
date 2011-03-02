class Company < ActiveRecord::Base
  
  def refresh_sentiment    
    sentiment = sentimentSearch(term)
    self.index = sentiment['sentiment_index'].to_f
    self.positive = sentiment['positive'].to_i
    self.negative = sentiment['negative'].to_i
    self.nuetral = sentiment['neutral'].to_i
    self.last_refresh = Date.today    
    self.save
  end
  
end
