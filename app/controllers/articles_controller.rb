class ArticlesController < ApplicationController
  def index
    response = HTTP.headers("X-Api-Key" => "API-KEY").get("https://newsapi.org/v2/everything?q=movies&from=2021-05-26&sortBy=popularity")
    render json: response.parse(:json)["articles"][5]
  end
end
