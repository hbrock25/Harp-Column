class EntriesPieces < ActiveRecord::Migration
  def self.up
    create_table :entries_pieces, :id => false do |t|
      t.integer :piece_id
      t.integer :entry_id
    end

    add_index :entries_pieces, [:piece_id, :entry_id], :unique => true
  end

  def self.down
    drop_table :entries_pieces
  end
end
