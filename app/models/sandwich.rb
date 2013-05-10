class Sandwich < ActiveRecord::Base
  attr_accessible :name, :description

  validates :name, presence: true
  validates :description, presence: true
  has_many :orders
  has_many :users, through: :orders
end
