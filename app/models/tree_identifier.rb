class TreeIdentifier < ApplicationRecord
  has_many :urban_trees

  validates :identifier, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "identifier", "updated_at"]
  end
end
