class Address < ApplicationRecord
  validates :country, presence: :true, if: :persisted?
  validates :street, presence: :true, if: :persisted?
  validates :city, presence: :true, if: :persisted?
  has_one :user
  geocoded_by :full_street_address
  after_validation :geocode
  def full_street_address
    self.street + self.city + self.country
  end
end
