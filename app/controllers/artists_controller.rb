class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
    @image = @artist.image_url
  end

  def new
    @artist = artists.build
  end

  def create
    @artist = artists.build(artist_params)

      if @artist.save
      end

  end
end
