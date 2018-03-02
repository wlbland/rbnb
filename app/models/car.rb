class Car < ApplicationRecord
  belongs_to :user
  validates :make, presence: true
  mount_uploader :photo, PhotoUploader

  include PgSearch

  pg_search_scope :search_by_make_and_model,
    against: [:make, :model ],
    using: {
      tsearch: {prefix: true }
    }

end
