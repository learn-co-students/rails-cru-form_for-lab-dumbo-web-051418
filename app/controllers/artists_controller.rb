class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    render :index
  end

  def new
    @artist = Artist.new
    render :new
  end

  def create
    @artist = Artist.find_or_create_by(artist_params)
    redirect_to artist_path(@artist)
  end

  def show
    @artist = find_artist(params[:id])
    render :show
  end

  def edit
    @artist = find_artist(params[:id])
    render :edit
  end

  def update
    @artist = find_artist(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist(id)
    artist = Artist.find(id)
  end

end
