class SandwichesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index]
  
  def new
    @sandwich = Sandwich.new
    # @sandwich.sandwich_ingredients.build
    # @ingredients = Ingredient.all
  end

  def create
    @sandwich = Sandwich.new(params[:sandwich])
    if @sandwich.save
      flash[:notice] = "Sandwich successfully saved"
      redirect_to :back
    else
      flash[:alert] = "Problem saving sandwich"
      redirect_to :back
    end
  end

  def index
    @sandwiches = Sandwich.all
    if request.xhr?
      render "shared/_order_sandwiches", layout: false
    end

  end
end