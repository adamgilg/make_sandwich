class Quote < ActiveRecord::Base
  attr_accessible :author, :body

  validates :author, presence: true
  validates :body, presence: true
end
