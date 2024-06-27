class SchoolZone < ApplicationRecord
  has_many :school_zone_signages
  has_many :schools, through: :school_zone_signages

  validates :zone_name, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["zone_name"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["school_zone_signages", "schools"]
  end
end
