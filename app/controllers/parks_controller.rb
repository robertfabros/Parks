class ParksController < ApplicationController
  def index
    @parks = Park.all.page(params[:page]).per(20)
  end

  def show
    @park = Park.find(params[:id])
  end

end
