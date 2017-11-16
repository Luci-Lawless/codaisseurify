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
end
