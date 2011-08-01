class CreatePieces < ActiveRecord::Migration
  def self.up
    create_table :pieces do |t|
      t.integer :composer_id
      t.integer :submitted_user_id
      t.date :date_composed
      t.string :description
      t.integer :difficulty_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pieces
  end
end
