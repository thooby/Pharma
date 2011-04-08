class CreateFamilleMeds < ActiveRecord::Migration
  def self.up
    create_table :famille_meds do |t|
      t.string :nom
      t.timestamps
    end
  end

  def self.down
    drop_table :famille_meds
  end
end
