class Produit < ActiveRecord::Base
  attr_accessible :nom, :famille_med_id
  belongs_to :famille_med 
  has_many :items
end
