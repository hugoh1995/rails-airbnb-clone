class User < ApplicationRecord
  after_create :add_dog

  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dogs, dependent: :destroy
  has_many :address, dependent: :destroy

  def add_dog
    self.dogs.create(breed: Breed.find_by(name: "default"))
  end
end
