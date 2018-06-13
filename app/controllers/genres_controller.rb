class GenresController < ApplicationController

  def index
    @genres = Genre.all
    render :index
  end

  def new
    @genre = Genre.new
    render :new
  end

  def create
    @genre = Genre.find_or_create_by(genre_params)
    redirect_to genre_path(@genre)
  end

  def show
    @genre = find_genre(params[:id])
    render :show
  end

  def edit
    @genre = find_genre(params[:id])
    render :edit
  end

  def update
    @genre = find_genre(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end

  def find_genre(id)
    genre = Genre.find(id)
  end
end
