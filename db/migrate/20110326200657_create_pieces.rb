class CreatePieces < ActiveRecord::Migration
  def self.up
    create_table :pieces do |t|
      t.string :title
      t.text :notes
      t.string :composer
      t.date :date_composed
      t.integer :difficulty

      t.timestamps
    end
  end

  def self.down
    drop_table :pieces
  end
end
