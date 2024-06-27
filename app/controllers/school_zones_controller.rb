class SchoolZonesController < ApplicationController
  def index
    @school_zone_signages = SchoolZoneSignage.all
  end
end
