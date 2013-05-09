class Sandwich < ActiveRecord::Base
  attr_accessible :name, :description

  validates :name, presence: true
  has_many :orders

  # belongs_to :user
  # has_many :sandwich_ingredients
  # accepts_nested_attributes_for :sandwich_ingredients, reject_if: :all_blank
end
