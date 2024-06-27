class TreeHealth < ApplicationRecord
  has_many :tree_inventories

  validates :status, presence: true
end
