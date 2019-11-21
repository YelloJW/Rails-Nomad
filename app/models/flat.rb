class Flat < ApplicationRecord
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :flat_type, presence: true, inclusion: { in: ['Yurt', 'Tipi', 'Cabin', 'Refuge', 'Barn', 'Shed'] }
  validates :address, presence: true, uniqueness: true
  validates :price_per_night, presence: true, numericality: { only_integer: true }
  validates :sleeps, presence: true, numericality: { only_integer: true }
end
