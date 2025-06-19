class Review < ApplicationRecord
  belongs_to :reviewer, class_name: "User"
  belongs_to :user
  belongs_to :exchange

  validates :rating, presence: true, inclusion: 1..5
end
