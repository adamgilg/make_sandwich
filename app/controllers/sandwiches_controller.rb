class SandwichesController < ApplicationController
  def new
    @sandwich = Sandwich.new
    @sandwich.sandwich_ingredients.build
    @ingredients = Ingredient.all
  end

  def create
    @sandwich = Sandwich.new(params[:sandwich])
    @sandwich.save
  end
end