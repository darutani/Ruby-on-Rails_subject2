class Reserve < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :start_date, :end_date, :number_people, presence: true
end
