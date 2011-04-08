class CreateOperations < ActiveRecord::Migration
  def self.up
    create_table :operations do |t|
      t.date :fecha
      t.integer :item_id
      t.integer :movement
      t.timestamps
    end
  end

  def self.down
    drop_table :operations
  end
end
