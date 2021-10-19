class SongsController < ApplicationController
  def index
    songs = Song.all
    render json:songs.as_json
  end

  def show
    the_id = params[:id]
    song = Song.find_by(id:the_id)

    render json:song.as_json
  end

  def create

    # song = Song.new(title: "Yo x Ti, Tu x Mi", album: "fifa 20 soundtrack",artist: "Rosalia",year: 2020)
    # song.save

    song = Song.new(
      title: params[:input_title],
      album: params[:input_album],
      artist: params[:input_artist],
      year: params[:year]
    )

    song.save

    render json:song.as_json
    
  end

  def update

    the_id = params[:id]
    song = Song.find_by(id:the_id)

    song.title = params[:input_title] || song.title 
    song.album = params[:input_album] || song.album
    song.artist = params[:input_artist] || song.artist
    song.year = params[:year] || song.year

    song.save
  

    render json:song.as_json

  end

end
