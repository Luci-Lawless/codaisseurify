class Api::SongsController < ApplicationController
skip_before_action :verify_authenticity_token
before_action :set_artist, only: [:index, :create, :destroy, :destroy_all]

  def index
    render status: 200, json: {
      songs: @artist.songs
    }.to_json
  end

  def show
    song = Song.find(params[:id])

    render status: 200, json: {
      song: song
    }.to_json
  end

  def create
    @song = @artist.songs.build(song_params)

    if @song.save
      render status: 201, json: {
        message: "Song successfully created",
        song: @song
      }.to_json
    else
      render status: 422, json: {
        errors: @song.errors
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

  def destroy_all
    @artist.songs.destroy_all

    render status: 200, json: {
      message: "All songs successfully deleted"
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
