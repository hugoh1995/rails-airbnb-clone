class Dog < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :breed
  belongs_to :user
end
