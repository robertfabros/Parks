class SchoolZoneSignage < ApplicationRecord
  belongs_to :school
  belongs_to :school_zone
  has_one_attached :image
  validates :school, :school_zone, :sign_type, :sign_location, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["sign_type", "sign_location", "school_id", "school_zone_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["school", "school_zone"]
  end
end
