class SchoolZonesController < ApplicationController
  def index
    @school_zone_signages = SchoolZoneSignage.all.page(params[:page]).per(20)
  end
  def show
    @school_zone_signage = SchoolZoneSignage.find(params[:id])
  end

  def new
    @school_zone_signage = SchoolZoneSignage.new
  end

  def edit
  end

  def create
    @school_zone_signage = SchoolZoneSignage.new(school_zone_params)

    if @school_zone_signage.save
      redirect_to @school_zone_signage, notice: 'School zone signage was successfully created.'
    else
      render :new
    end
  end

  def update
    if @school_zone_signage.update(school_zone_params)
      redirect_to @school_zone_signage, notice: 'School zone signage was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @school_zone_signage.destroy
    redirect_to school_zones_url, notice: 'School zone signage was successfully destroyed.'
  end

  private

  def set_school_zone_signage
    @school_zone_signage = SchoolZoneSignage.find(params[:id])
  end

  def school_zone_params
    params.require(:school_zone_signage).permit(:school_name, :zone_name, :sign_type, :image)
  end


end
