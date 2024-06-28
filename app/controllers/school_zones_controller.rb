class SchoolZonesController < ApplicationController
  def index
    @school_zone_signages = SchoolZoneSignage.all.page(params[:page]).per(20)
  end
  def show
    @school_zone_signage = SchoolZoneSignage.find(params[:id])
  end
  def school_zone_params
    params.require(:school_zone_signage).permit(:school_name, :zone_name, :sign_type, :image)
  end
end
