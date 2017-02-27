class Dog < ApplicationRecord
  belongs_to :breed
  belongs_to :user
  validates :name, presence: :true
end
