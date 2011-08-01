class CreateDifficulties < ActiveRecord::Migration
  def self.up
    create_table :difficulties do |t|
      t.string :label

      t.timestamps
    end
  end

  def self.down
    drop_table :difficulties
  end
end
