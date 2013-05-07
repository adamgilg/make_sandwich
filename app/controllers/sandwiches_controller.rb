class SandwichesController < ApplicationController
  def new
    @sandwich = Sandwich.new
    # @sandwich.sandwich_ingredients.build
    # @ingredients = Ingredient.all
  end

  def create
    @sandwich = Sandwich.new(params[:sandwich])
    if @sandwich.save
      flash[:notice] = "Sandwich successfully saved"
    else
      flash[:alert] = "Problem saving sandwich"
    end
  end
end