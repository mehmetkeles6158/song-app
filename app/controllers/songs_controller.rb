class SongsController < ApplicationController
  def index
    
    render json:{message:"Hello Index!"}
  end
end
