class RecipesController < ApplicationController
  def index
    @keyword = params[:q] || 'chocolate'
    @recipes = Recipe.for(@keyword)
  end
end
