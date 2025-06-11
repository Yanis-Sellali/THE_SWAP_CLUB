class Team < ApplicationRecord
  has_many :jerseys
  has_one_attached :photo

def logo
  "logos/#{name.parameterize}.png"
end

def background
  "backgrounds/#{name.parameterize}.jpg"
end
end
