class Address < ApplicationRecord
  validates :country, presence: :true
  validates :street, presence: :true
  validates :city, presence: :true
  geocoded_by :full_street_address
  after_validation :geocode
  def full_street_address
    self.street + self.city + self.country
  end
end
