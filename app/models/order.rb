class Order < ActiveRecord::Base
  attr_accessible :item_id, :number, :user_id
end
