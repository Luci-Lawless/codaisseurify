class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true
  validates :genre, presence: true
  validates :image_url, presence: true
  mount_uploader :image_url, ImageUploader
  # skip_callback :remove_previously_stored_avatar

end
