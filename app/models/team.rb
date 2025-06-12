class Team < ApplicationRecord
  has_many :jerseys
  has_one_attached :photo
  has_one_attached :background_image


def logo
  "logos/#{name.parameterize}.png"
end

def background
  "backgrounds/#{name.parameterize}.jpg"
end
end
