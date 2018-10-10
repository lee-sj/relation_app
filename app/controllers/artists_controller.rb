class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  def new
    @artist = Artist.new
  end

  def create 
    @artist = Artist.new(artist_params)
    if @artist.save
      # TODO: flash msg
      redirect_to artist_url(@artist)
    else 
      render 'new'
    end
  end 

  def show
  end

  def index
    @artists = Artist.all
  end

  def edit
  end
  
  def update 
    if @artist.update
      redirect_to artist_url(@artist)
    else 
      render "edit"
    end
  end 
  
  def destroy
    @artist.destroy 
  end
  
  private 
  def set_artist
    @artist = Artist.find params[:id]
  end 
  def artist_params
    params.require(:artist).permit(:name, :nationality, :image)
  end
end
