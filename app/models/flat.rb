class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :flat_type, presence: true, inclusion: { in: ['yurt', 'tipi', 'cabin', 'refuge', 'barn', 'shed'] }
  validates :address, presence: true, uniqueness: true
  validates :price_per_night, presence: true, numericality: { only_integer: true }
  validates :sleeps, presence: true, numericality: { only_integer: true }
  validates :electricity, presence: true
  validates :drinking_water, presence: true
end
