class ArticlesController < ApplicationController
  def index
    response = HTTP.headers("X-Api-Key" => Rails.application.credentials.news_api_key).get("https://newsapi.org/v2/everything?q=#{params[:search]}&sortBy=popularity")
    render json: response.parse(:json)["articles"]
  end
end
