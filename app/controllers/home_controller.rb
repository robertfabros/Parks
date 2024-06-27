class HomeController < ApplicationController
  def index
  end

  def about
  end

  def search
    @query = params[:q]
    @results = Park.where("name LIKE ?", "%#{@query}%") +
               UrbanTree.where("common_name LIKE ?", "%#{@query}%") +
               SchoolZoneSignage.where("sign_location LIKE ?", "%#{@query}%")
  end
end
