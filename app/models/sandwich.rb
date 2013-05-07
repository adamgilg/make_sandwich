class Sandwich < ActiveRecord::Base
  attr_accessible :name

  belongs_to :user
  has_many :sandwich_ingredients
  accepts_nested_attributes_for :sandwich_ingredients
end
