class Api::ThirdpartyapiController < ApplicationController
  def index 
    @news = HTTP.headers("Authorization" => "Bearer #{ENV['news_api_key']}").get("https://newsapi.org/v2/everything?q=#{params[:search]}").parse
    render 'index.json.jb'
  end
end
