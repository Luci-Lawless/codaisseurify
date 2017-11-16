require 'rails_helper'

require 'rails_helper'

RSpec.describe Artist, type: :model do
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
end
