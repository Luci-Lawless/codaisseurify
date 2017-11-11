class Song < ApplicationRecord
  belongs_to :artist

  validates :song_title, presence: true
  validates :duration, presence: true, length: {maximum: 5} #add only accepts numbers!

end
