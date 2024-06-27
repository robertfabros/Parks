class TreeSpecy < ApplicationRecord
  has_many :tree_inventories

  validates :name, :scientific_name, presence: true
end
