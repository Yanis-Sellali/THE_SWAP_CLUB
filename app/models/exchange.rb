class Exchange < ApplicationRecord

  belongs_to :owner, class_name: "User"
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
  belongs_to :sender_jersey, class_name: "Jersey"
  belongs_to :receiver_jersey, class_name: "Jersey"

  has_one :chat, dependent: :destroy

  def offer_for(user)
  offers.find_by(user: user)&.jersey
  end

  validates :sender_jersey, presence: true
  validates :receiver_jersey, presence: true
end
