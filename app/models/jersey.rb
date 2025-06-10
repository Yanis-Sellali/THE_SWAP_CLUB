class Jersey < ApplicationRecord
  belongs_to :user
  belongs_to :team

  validates :image, presence: true
end
