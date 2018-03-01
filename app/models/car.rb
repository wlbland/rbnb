class Car < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :make, presence: true
end
