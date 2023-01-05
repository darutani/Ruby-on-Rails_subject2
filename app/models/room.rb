class Room < ApplicationRecord
  has_many :reserves
  belongs_to :user
  has_many :reserve_users, through: :reserves, source: :user

  mount_uploader :room_image, RoomImageUploader

  validates :name, :introduction, :price, :address, :room_image, presence: true
end
