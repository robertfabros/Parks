class HomeController < ApplicationController
  def index
  end

  def about
  end

  def search
    query = params[:q]
    category = params[:category]

    case category
    when 'parks'
      @results = Park.where("name LIKE ?", "%#{query}%")
    when 'school_zones'
      @results = SchoolZoneSignage.joins(:school).where("schools.name LIKE ?", "%#{query}%")
    when 'urban_trees'
      @results = UrbanTree.where("common_name LIKE ?", "%#{query}%")
    else
      @results = Park.where("name LIKE ?", "%#{query}%") +
                 SchoolZoneSignage.joins(:school).where("schools.name LIKE ?", "%#{query}%") +
                 UrbanTree.where("common_name LIKE ?", "%#{query}%")
    end

    render :search
  end
end
