class Item < ActiveRecord::Base
  attr_accessible :produit_id, :nom_comercial, :tipe_id, :dose, :quantite
  belongs_to :produit
  belongs_to :tipe
  has_many :operations
end
