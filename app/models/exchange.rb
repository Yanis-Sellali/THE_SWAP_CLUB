class Exchange < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  belongs_to :jersey

end
