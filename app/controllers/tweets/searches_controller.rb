class Tweets::SearchesController < ApplicationController
  def index
    @tweets = Tweet.search(params[:keyword]).order("created_at DESC")
  end
end
