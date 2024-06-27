class School < ApplicationRecord
  has_many :school_zone_signages
  has_many :school_zones, through: :school_zone_signages

  validates :name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["name"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["school_zone_signages", "school_zones"]
  end
end
