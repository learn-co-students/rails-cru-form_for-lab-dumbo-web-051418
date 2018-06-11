require 'pry'
class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    # binding.pry
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :song_artist_id, :song_genre_id))
    redirect_to @song
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params(:name, :song_artist_id, :song_genre_id))
    redirect_to @song
  end

  private
  def song_params(*args)
    params.require(:song).permit(*args)
  end
end
