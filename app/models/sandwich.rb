class Sandwich < ActiveRecord::Base
  attr_accessible :name, :description

  validates :name, presence: true

  # belongs_to :user
  # has_many :sandwich_ingredients
  # accepts_nested_attributes_for :sandwich_ingredients, reject_if: :all_blank
end
