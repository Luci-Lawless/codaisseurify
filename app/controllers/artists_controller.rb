class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @image = @artist.image_url
  end

  def new
    @artist = Artist.new
    # @song = new_artist.songs.build
  end

  def create
    @artist = Artist.new(artist_params)
      if @artist.save
        redirect_to artists_path, notice: "Artist created!"
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to @artist, notice: "Artist updated!"
    else
      render :edit
    end
  end

  def destroy
  end

  private
    def set_artist
      @artist = Artist.find(params[:id])
    end

    def artist_params
      params
      .require(:artist)
      .permit(:name, :genre, :image_url)
    end

    # def song_params
    #   params[:song_title].present? ? params.require(:song_title) : []
    # end
end