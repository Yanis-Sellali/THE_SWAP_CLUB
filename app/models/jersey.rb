class Jersey < ApplicationRecord
  belongs_to :user
  belongs_to :team
end
