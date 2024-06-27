class BotanicalName < ApplicationRecord
  has_many :urban_trees

  validates :scientific_name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "scientific_name", "updated_at"]
  end
end
