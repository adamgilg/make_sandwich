class Order < ActiveRecord::Base
  attr_accessible :sandwich_id

  belongs_to :user
  belongs_to :sandwich
end
