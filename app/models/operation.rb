class Operation < ActiveRecord::Base
  attr_accessible :fecha, :item_id, :movement
  belongs_to :item
end
