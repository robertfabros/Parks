class TreeLocation < ApplicationRecord
  has_many :tree_inventories

  validates :latitude, :longitude, presence: true
end
