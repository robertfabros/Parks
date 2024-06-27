class UrbanTreesController < ApplicationController
  def index
    @urban_trees = UrbanTree.all
  end
end
