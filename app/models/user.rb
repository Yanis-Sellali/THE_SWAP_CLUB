class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :jerseys
  has_many :exchanges

  has_many :jerseys, dependent: :destroy
  references :user, foreign_key: true

  has_many :messages
  has_many :chats, through: :messages

  def unread_messages_count
    unread_messages.count
  end
  def unread_messages
    Message.joins(chat: :exchange)
           .where(read: false)
           .where.not(user_id: id) # messages pas envoyés par moi (donc reçus)
           .where('exchanges.sender_id = :id OR exchanges.receiver_id = :id', id: id)
end
end
