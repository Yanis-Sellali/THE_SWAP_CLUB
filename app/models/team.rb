class Team < ApplicationRecord
  has_many :jerseys
  
def logo
  "logos/#{name.parameterize}.png"
end

def background
  "backgrounds/#{name.parameterize}.jpg"
end
end
