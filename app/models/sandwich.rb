class Sandwich < ActiveRecord::Base
  attr_accessible :name

  belongs_to :user
  has_many :ingredients, through: :sandwich_ingredients
end
