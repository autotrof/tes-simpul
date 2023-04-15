class User < ApplicationRecord
  # has_and_belongs_to_many :rooms
  has_many :rooms_users
  has_many :rooms, through: :rooms_users
end
