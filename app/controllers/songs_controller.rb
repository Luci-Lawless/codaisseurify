class SongsController < ApplicationController
before_action :set_songs, only: [:show, :edit, :update, :destroy]

  def show
      @songs = @artist.songs
  end

  def new
    @song = @artist.songs.build(song_params)
  end

  private
    # def set_songs
    #   @song = Song.find(params[:id])
    # end
    def song_params
      params
      .permit(:song_title, :duration)
    end
end
