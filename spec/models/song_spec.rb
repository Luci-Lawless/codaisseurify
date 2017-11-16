require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a title" do
      song = Song.new(song_title: "")
      song.valid?
      expect(song.errors).to have_key(:song_title)
    end

    it "is invalid without a duration" do
      song = Song.new(duration: "")
      song.valid?
      expect(song.errors).to have_key(:duration)
    end
  end

  describe "association with artist" do
    artist = Artist.new()
    it "belongs to an artist" do
      song = artist.songs.build()
      expect(song.artist).to eq(artist)
    end
  end

end
