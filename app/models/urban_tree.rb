# app/models/urban_tree.rb
class UrbanTree < ApplicationRecord
  belongs_to :common_name
  belongs_to :electoral_ward
  has_one_attached :image

  validates :common_name, :electoral_ward, presence: true

  def self.ransackable_associations(auth_object = nil)
    []
  end

  def self.ransackable_attributes(auth_object = nil)
    ["common_name_id", "electoral_ward_id", "created_at", "updated_at"]
  end
end
