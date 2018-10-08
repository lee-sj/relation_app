class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      
    else 
      
    end
    redirect_to song_url(@song)
  end 
  
  def index
    @song = Song.page(params[:page]).per(10).order(title: :asc)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
  end
  
  def update 
    if @song.update song_params
      
    else 
      
    end
    redirect_to song_url(@song)
  end
  
  def destroy 
    @song.destroy 
    redirect_back fallback_location: song_url
  end
  
  private
  def set_song
    @song = Song.find params[:id]
  end
  
  def song_params
    params.require(:song).permit(:title, :lyric, :cover)
  end
end
