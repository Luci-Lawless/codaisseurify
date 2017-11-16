require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without a genre" do
      artist = Artist.new(genre: "")
      artist.valid?
      expect(artist.errors).to have_key(:genre)
    end

    it "is invalid without a image" do
      artist = Artist.new(image_url: "")
      artist.valid?
      expect(artist.errors).to have_key(:image_url)
    end
  end

  describe "association with song" do
    artist = Artist.new()

    it "has many songs" do
      song1 = artist.songs.build(song_title: "title1")
      song2 = artist.songs.build(song_title: "title2")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end
  end
end
