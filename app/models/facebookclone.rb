class Facebookclone < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content, presence: true
end
