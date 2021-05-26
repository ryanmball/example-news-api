class ArticlesController < ApplicationController
  def index
    response = HTTP.headers("X-Api-Key" => "dd1c1eb5b10b47e18b09b6f7be67ddce").get("https://newsapi.org/v2/everything?q=#{params[:search]}&sortBy=popularity")
    render json: response.parse(:json)["articles"]
  end
end
