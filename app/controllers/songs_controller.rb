class SongsController < ApplicationController
  def index
    @songs = Song.all
    render :index
  end

  def new
    @song = Song.new
    render :new
  end

  def create
    #binding.pry
    @song = Song.find_or_create_by(name: song_params[:name])
    @song.artist = Artist.find_or_create_by(name: song_params[:artist])
    @song.genre = Genre.find_or_create_by(name: song_params[:genre])
    @song.save
    redirect_to song_path(@song)
  end

  def show
    @song = find_song(params[:id])
    @artist = @song.artist
    @genre = @song.genre
    render :show
  end

  def edit
    @song = find_song(params[:id])
    @artist = @song.artist
    @genre = @song.genre
    render :edit
  end

  def update
    @song = find_song(params[:id])
    @song.artist = Artist.find_or_create_by(name: song_params[:artist])
    @song.genre = Genre.find_or_create_by(name: song_params[:genre])
    @song.save
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist, :genre)
  end

  def find_song(id)
    song = Song.find(id)
  end
end
