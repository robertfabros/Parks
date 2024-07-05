class UrbanTreesController < ApplicationController
  def index
    @urban_trees = UrbanTree.order(:common_name, :electoral_ward).page(params[:page]).per(20)
  end

  def show
    @urban_tree = UrbanTree.find(params[:id])
  end
end
