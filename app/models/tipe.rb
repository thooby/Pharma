class Tipe < ActiveRecord::Base
  attr_accessible :nom
  has_many :items
end
