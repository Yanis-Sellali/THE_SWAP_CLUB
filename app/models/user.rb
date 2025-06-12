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

end
