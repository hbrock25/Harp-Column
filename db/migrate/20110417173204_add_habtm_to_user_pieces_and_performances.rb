class AddHabtmToUserPiecesAndPerformances < ActiveRecord::Migration
  def self.up
    create_table :performances_user_pieces, :id => false do |t|
      t.references :user_piece, :null => false
      t.references :performance, :null => false
    end
    add_index(:performances_user_pieces, [:user_piece_id, :performance_id], 
              :unique => true, :name => 'performances_user_pieces_idx')
  end

  def self.down
    drop_table :performances_user_pieces
  end
end
