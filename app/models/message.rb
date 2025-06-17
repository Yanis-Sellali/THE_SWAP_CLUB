class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user, optional: true

  enum message_type: { normal: "normal", trade_offer: "trade_offer", system: "system" }
  after_create_commit -> { broadcast_append_to chat, target: "messages", partial: "messages/message", locals: { message: self, current_user: self.user } }

  belongs_to :offer_jersey_user1, class_name: "Jersey", optional: true
  belongs_to :offer_jersey_user2, class_name: "Jersey", optional: true

  validates :content, presence: true, unless: -> { trade_offer? || system? }

  def accepted_by?(user)
    return false unless chat&.exchange && user

    if user == chat.exchange.sender
      user1_accepted
    else
      user2_accepted
    end
  end

  def mark_as_accepted_by(user)
    if user == chat.exchange.sender
      update(user1_accepted: true)
    else
      update(user2_accepted: true)
    end
  end

  def both_accepted?
    user1_accepted && user2_accepted
  end

  def finalized_by?(user)
    if user == chat.exchange.sender
      user1_finalized
    else
      user2_finalized
    end
  end

  def mark_as_finalized_by(user)
    if user == chat.exchange.sender
      update(user1_finalized: true)
    else
      update(user2_finalized: true)
    end
  end

  def both_finalized?
    user1_finalized && user2_finalized
  end
end
