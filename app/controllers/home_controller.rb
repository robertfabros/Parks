class HomeController < ApplicationController
  def index
  end

  def about
  end

  def search
    query = params[:q]
    @parks = Park.where("name LIKE ?", "%#{query}%")
    @school_zones = SchoolZoneSignage.joins(:school).where("schools.name LIKE ?", "%#{query}%")
    @urban_trees = UrbanTree.where("common_name LIKE ?", "%#{query}%")

    render :search
  end
end
