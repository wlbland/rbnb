class Car < ApplicationRecord
  belongs_to :user
  validates :make, presence: true
  mount_uploader :photo, PhotoUploader
end
