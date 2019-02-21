class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def new
      @song = Song.new
  end

  def create
      @song = Song.new(song_params(:name))
      @song.save
      redirect_to song_path(@song)
    end

  def edit
      @genre = Genre.find(params[:id])
  end

  def update
      @genre = Genre.find(params[:id])
       @genre.update(genre_params(:name))
      redirect_to genre_path(@genre)
  end

  end
  private



  def genre_params(*args)
    params.require(:genre).permit(*args)
  end
