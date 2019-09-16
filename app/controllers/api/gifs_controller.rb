class Api::GifsController < ApplicationController
  def index
    # @gifs = HTTP.get("https://api.giphy.com/v1/gifs/search?api_key=USiosdTm2ZGXVCfcwCQvqyReX6zpwCU8&q=#{params[:search]}&limit=25&offset=0&rating=G&lang=en").parse["data"]
    # render 'index.json.jb'
    @gifs = HTTP.auth("Bearer USiosdTm2ZGXVCfcwCQvqyReX6zpwCU8").get("https://api.giphy.com/v1/gifs/search?api_key=USiosdTm2ZGXVCfcwCQvqyReX6zpwCU8&q=#{params[:search]}&limit=25&offset=0&rating=G&lang=en").parse["data"]
    render 'index.json.jb'
  end
end
