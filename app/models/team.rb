class Team < ApplicationRecord
  has_many :jerseys
  has_one_attached :banner

def logo
  "logos/#{name.parameterize}.png"
end

def background
  "backgrounds/#{name.parameterize}.jpg"
end
end
