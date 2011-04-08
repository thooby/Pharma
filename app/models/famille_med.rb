class FamilleMed < ActiveRecord::Base
  attr_accessible :nom
  has_many :produits
end
