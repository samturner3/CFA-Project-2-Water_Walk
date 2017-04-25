class Location < ApplicationRecord
  belongs_to :supplier
  has_many :resources
end
