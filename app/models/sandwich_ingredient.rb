class SandwichIngredient < ActiveRecord::Base
  attr_accessible :ingredient_id, :sandwich_id
  belongs_to :sandwich
  belongs_to :ingredient

  # validates :sandwich_id, presence: true
  # validates :ingredient_id, present: true
end
