class Team < ApplicationRecord
  has_many :jerseys
  has_one_attached :photo
end
