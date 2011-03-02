class CompaniesController < ApplicationController
  require 'twitter_sentiment_api'
  
  def index
    @companies = Company.all
  end
  
  def show
    @company = Company.find(params[:id])
  end
  
  def new
    @company = Company.new
  end
  
  def create
    @company = Company.new(params[:company])
    @company.term = CGI::escape(@company.name.downcase)
    
    if @company.save
      @company.refresh_sentiment
      redirect_to(@company, :notice => 'Stock was successfully created.')
      else
        render :action => "new"
      end
    
  end
end
