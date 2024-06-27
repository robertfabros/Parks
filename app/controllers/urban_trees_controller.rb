class UrbanTreesController < ApplicationController
  def index
    @urban_trees = UrbanTree.order(Arel.sql("common_name IS NULL, electoral_ward IS NULL")).page(params[:page]).per(20)
  end
  def show
    @urban_tree = UrbanTree.find(params[:id])
  end
end
