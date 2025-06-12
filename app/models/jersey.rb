class Jersey < ApplicationRecord
  belongs_to :user
  belongs_to :team

  has_one_attached :image

  validates :image, presence: true
end
