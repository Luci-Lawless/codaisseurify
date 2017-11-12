class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  private
    # def set_songs
    #   @song = Song.find(params[:id])
    # end
    def song_params
      params
      .require(:song)
      .permit(:song_title, :duration, :artist_id)
    end
end
