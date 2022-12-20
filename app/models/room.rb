class Room < ApplicationRecord
  has_many :reserves
  belongs_to :user
  has_many :reserve_users, through: :reserves, source: :user
end
