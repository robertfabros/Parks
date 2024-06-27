class LocationClass < ApplicationRecord
  has_many :urban_trees

  validates :classification, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "classification", "updated_at"]
  end
end
