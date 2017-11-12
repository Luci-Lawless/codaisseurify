class SongsController < ApplicationController
before_action :set_artist, only: [:new, :create]
  def new
    @song = @artist.songs.build
  end

  def create
    @song = @artist.songs.build(song_params)
    if @song.save
      redirect_to artists_path, notice: "Song added!"
    else
      render :new
    end
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
