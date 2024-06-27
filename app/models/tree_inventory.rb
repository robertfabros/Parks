class TreeInventory < ApplicationRecord
  belongs_to :tree_specy
  belongs_to :tree_health
  belongs_to :tree_location

  validates :common_name, :scientific_name, :diameter, :condition, :latitude, :longitude, presence: true

  def self.ransackable_associations(auth_object = nil)
    ["tree_health", "tree_location", "tree_specy"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["common_name", "condition", "created_at", "diameter", "id", "id_value", "latitude", "longitude", "park_id", "scientific_name", "tree_health_id", "tree_location_id", "tree_specy_id", "updated_at"]
  end

end
