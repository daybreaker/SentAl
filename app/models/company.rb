class Company < ActiveRecord::Base
  
  def refresh_sentiment
    @sentiment = sentimentSearch(term)
    index = @sentiment['sentiment_index'].to_f
    positive = @sentiment['positive'].to_i
    negative = @sentiment['negative'].to_i
    nuetral = @sentiment['nuetral'].to_i
    last_refresh = Date.today
    self.save
  end
  
end
