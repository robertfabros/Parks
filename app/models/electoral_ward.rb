# app/models/electoral_ward.rb
class ElectoralWard < ApplicationRecord
  has_many :urban_trees

  def self.ransackable_associations(auth_object = nil)
    []
  end

  def self.ransackable_attributes(auth_object = nil)
    ["name", "created_at", "updated_at"]
  end
end
