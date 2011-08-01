class CreatePieces < ActiveRecord::Migration
  def self.up
    create_table :pieces do |t|
      t.integer :composer_id
      t.integer :user_id
      t.date    :date
      t.string  :description
      t.integer :difficulty_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pieces
  end
end
