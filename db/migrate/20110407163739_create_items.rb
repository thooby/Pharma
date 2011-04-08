class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.integer :produit_id
      t.string :nom_comercial
      t.integer :tipe_id
      t.string :dose
      t.integer :quantite
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
