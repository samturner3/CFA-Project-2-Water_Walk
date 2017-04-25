class Supplier < ApplicationRecord
  has_many :locations
  belongs_to :user
  mount_uploader :avatar, AvatarUploader
end
