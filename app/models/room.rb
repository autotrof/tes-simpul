class Room < ApplicationRecord
  validates :name, uniqueness: true
  
  has_many :chat_messages
  belongs_to :user
  # has_and_belongs_to_many :users
  has_many :rooms_users
  has_many :users, through: :rooms_users
end
