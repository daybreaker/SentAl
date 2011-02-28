class CompaniesController < ApplicationController
  require 'twitter_sentiment_api'
  
  def index
    @companies = Company.all
  end
  
  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(params[:company])
    @company.term = @company.name.downcase
    
    @company.save
    @company.refresh_sentiment
    
    redirect :index
  end
end
