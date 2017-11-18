class SongsController < ApplicationController
before_action :set_artist, only: [:new, :create, :destroy]
  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.build(song_params)
    if @song.save
      redirect_to artist_path(@artist), notice: "Song added!"
    else
      render :new
    end
  end

  def destroy
     @song = Song.find(params[:id])
     @song.destroy
     redirect_to artist_path(@artist), notice: "Song deleted!"
   end

  private
    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
    
    def song_params
      params
      .require(:song)
      .permit(:song_title, :duration)
    end
end
