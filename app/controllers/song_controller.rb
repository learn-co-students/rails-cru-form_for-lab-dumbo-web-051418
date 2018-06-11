require 'pry'
class SongController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
    @artists = Artist.all
    @genres = Genre.all
  end

  def edit
    @song = Song.find(params[:id])
    @artists = Artist.all
    @genres = Genre.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def delete
    @song = Song.find(params[:id])
    @song.destroy
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
