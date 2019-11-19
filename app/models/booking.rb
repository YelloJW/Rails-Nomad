class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :to_date, presence: true
  validates :from_date, presence: true
end
