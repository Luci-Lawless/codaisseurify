class Api::SongsController < ApplicationController
before_action :set_artist, only: [:new, :create, :destroy]

  def index
    render status: 200, json: {
      songs: Song.all
    }.to_json
  end

  def create
    song = Song.new(song_params)

    if song.save
      render status: 201, json: {
        message: "Song successfully created",
        song: song
      }.to_json
    else
      render status: 422, json: {
        errors: song.errors
      }.to_json
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy

    render status: 200, json: {
      message: "Song successfully deleted"
    }.to_json

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
